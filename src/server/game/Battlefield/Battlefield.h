/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef BATTLEFIELD_H_
#define BATTLEFIELD_H_

#include "Position.h"
#include "SharedDefines.h"
#include "ZoneScript.h"
#include <map>
#include <memory>

enum BattlefieldTypes
{
    BATTLEFIELD_WG = 1,                                     // Wintergrasp
    BATTLEFIELD_TB = 2,                                     // Tol Barad (cataclysm)
    BATTLEFIELD_MAX
};

enum BattlefieldIDs
{
    BATTLEFIELD_BATTLEID_WG                      = 1,       // Wintergrasp battle
    BATTLEFIELD_BATTLEID_TB                      = 21,      // Tol Barad
    BATTLEFIELD_BATTLEID_ASHRAN                  = 24       // Ashran
};

enum BattlefieldState : int8
{
    BATTLEFIELD_INACTIVE = 0,
    BATTLEFIELD_WARMUP = 1,
    BATTLEFIELD_IN_PROGRESS = 2
};

enum BattlefieldObjectiveStates
{
    BF_CAPTUREPOINT_OBJECTIVESTATE_NEUTRAL = 0,
    BF_CAPTUREPOINT_OBJECTIVESTATE_ALLIANCE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_HORDE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_NEUTRAL_ALLIANCE_CHALLENGE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_NEUTRAL_HORDE_CHALLENGE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_ALLIANCE_HORDE_CHALLENGE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_HORDE_ALLIANCE_CHALLENGE
};

enum BattlefieldSounds
{
    BF_SOUND_HORDE_WINS                          = 8454,
    BF_SOUND_ALLIANCE_WINS                       = 8455,
    BF_SOUND_START                               = 3439
};

enum BattlefieldTimers
{
    BATTLEFIELD_OBJECTIVE_UPDATE_INTERVAL        = 1000
};

// some class predefs
class Battlefield;
class BfGraveyard;
class Creature;
class GameObject;
class Group;
class Map;
class Player;
class Unit;
class WorldPacket;
struct Position;
struct QuaternionData;
struct WorldSafeLocsEntry;

namespace WorldPackets
{
    namespace WorldState
    {
        class InitWorldStates;
    }
}

typedef std::vector<BfGraveyard*> GraveyardVect;
typedef std::map<ObjectGuid, time_t> PlayerTimerMap;

class TC_GAME_API BattlefieldControlZoneHandler : public ControlZoneHandler
{
public:
    explicit BattlefieldControlZoneHandler(Battlefield* bf);
    virtual ~BattlefieldControlZoneHandler() = default;

protected:
    Battlefield* GetBattlefield();
private:
    Battlefield* _battlefield;
};

class TC_GAME_API BfGraveyard
{
    public:
        BfGraveyard(Battlefield* Bf);
        virtual ~BfGraveyard() = default;

        // Method to changing who controls the graveyard
        void GiveControlTo(TeamId team);
        TeamId GetControlTeamId() const { return m_ControlTeam; }

        // Find the nearest graveyard to a player
        float GetDistance(Player* player);

        // Initialize the graveyard
        void Initialize(TeamId startcontrol, uint32 gy);

        // Set spirit service for the graveyard
        void SetSpirit(Creature* spirit, TeamId team);

        // Check if this graveyard has a spirit guide
        bool HasNpc(ObjectGuid guid);

        // Get the graveyard's ID.
        uint32 GetGraveyardId() const { return m_GraveyardId; }

    protected:
        TeamId m_ControlTeam;
        uint32 m_GraveyardId;
        ObjectGuid m_SpiritGuide[PVP_TEAMS_COUNT];
        Battlefield* m_Bf;
};

class TC_GAME_API Battlefield : public ZoneScript
{
    friend class BattlefieldMgr;

    public:
        /// Constructor
        explicit Battlefield(Map* map);
        Battlefield(Battlefield const& right) = delete;
        Battlefield(Battlefield&& right) = delete;
        Battlefield& operator=(Battlefield const& right) = delete;
        Battlefield& operator=(Battlefield&& right) = delete;
        /// Destructor
        virtual ~Battlefield();

        /// typedef of map witch store capturepoint and the associate gameobject entry

        typedef std::unordered_map<uint32 /*control zone entry*/, std::unique_ptr<BattlefieldControlZoneHandler>> ControlZoneHandlerMap;

        /// Call this to init the Battlefield
        virtual bool SetupBattlefield() { return true; }

        /**
         * \brief Called every time for update bf data and time
         * - Update timer for start/end battle
         * - Invite player in zone to queue m_StartGroupingTimer minutes before start
         * - Kick Afk players
         * \param diff : time ellapsed since last call (in ms)
         */
        virtual bool Update(uint32 diff);

        /// Invite all players in zone to join the queue, called x minutes before battle start in Update()
        void InvitePlayersInZoneToQueue();
        /// Invite all players in queue to join battle on battle start
        void InvitePlayersInQueueToWar();
        /// Invite all players in zone to join battle on battle start
        void InvitePlayersInZoneToWar();

        /// Called when a Unit is kill in battlefield zone
        virtual void HandleKill(Player* /*killer*/, Unit* /*killed*/) { };

        uint32 GetTypeId() const { return m_TypeId; }
        uint32 GetZoneId() const { return m_ZoneId; }
        uint32 GetMapId() const { return m_MapId; }
        Map* GetMap() const { return m_Map; }
        uint64 GetQueueId() const;

        void TeamApplyBuff(TeamId team, uint32 spellId, uint32 spellId2 = 0);

        /// Return true if battle is start, false if battle is not started
        bool IsWarTime() const { return m_isActive; }

        int8 GetState() const { return m_isActive ? BATTLEFIELD_IN_PROGRESS : (m_Timer <= m_StartGroupingTimer ? BATTLEFIELD_WARMUP : BATTLEFIELD_INACTIVE); }

        /// Enable or Disable battlefield
        void ToggleBattlefield(bool enable) { m_IsEnabled = enable; }
        /// Return if battlefield is enable
        bool IsEnabled() const { return m_IsEnabled; }

        /**
         * \brief Kick player from battlefield and teleport him to kick-point location
         * \param guid : guid of player who must be kick
         */
        void KickPlayerFromBattlefield(ObjectGuid guid);

        /// Called when player (player) enter in zone
        void HandlePlayerEnterZone(Player* player, uint32 zone);
        /// Called when player (player) leave the zone
        void HandlePlayerLeaveZone(Player* player, uint32 zone);

        // All-purpose data storage 64 bit
        virtual uint64 GetData64(uint32 dataId) const override { return m_Data64[dataId]; }
        virtual void SetData64(uint32 dataId, uint64 value) override { m_Data64[dataId] = value; }

        // All-purpose data storage 32 bit
        virtual uint32 GetData(uint32 dataId) const override { return m_Data32[dataId]; }
        virtual void SetData(uint32 dataId, uint32 value) override { m_Data32[dataId] = value; }
        virtual void UpdateData(uint32 index, int32 pad) { m_Data32[index] += pad; }

        // Battlefield - generic methods
        TeamId GetDefenderTeam() const { return m_DefenderTeam; }
        TeamId GetAttackerTeam() const { return TeamId(1 - m_DefenderTeam); }
        void SetDefenderTeam(TeamId team) { m_DefenderTeam = team; }

        // Group methods
        /**
         * \brief Find a not full battlefield group, if there is no, create one
         * \param TeamId : Id of player team for who we search a group (player->GetTeamId())
         */
        Group* GetFreeBfRaid(TeamId TeamId);
        /// Return battlefield group where player is.
        Group* GetGroupPlayer(ObjectGuid guid, TeamId TeamId);
        /// Force player to join a battlefield group
        bool AddOrSetPlayerToCorrectBfGroup(Player* player);

        // Graveyard methods
        // Find which graveyard the player must be teleported to to be resurrected by spiritguide
        WorldSafeLocsEntry const* GetClosestGraveyard(Player* player);

        void SetGraveyardNumber(uint32 number) { m_GraveyardList.resize(number); }
        BfGraveyard* GetGraveyardById(uint32 id) const;

        // Misc methods
        Creature* SpawnCreature(uint32 entry, Position const& pos);
        GameObject* SpawnGameObject(uint32 entry, Position const& pos, QuaternionData const& rot);

        Creature* GetCreature(ObjectGuid guid);
        GameObject* GetGameObject(ObjectGuid guid);

        // Script-methods

        /// Called on start
        virtual void OnBattleStart() { }
        /// Called at the end of battle
        virtual void OnBattleEnd(bool /*endByTimer*/) { }
        /// Called x minutes before battle start when player in zone are invite to join queue
        virtual void OnStartGrouping() { }
        /// Called when a player accept to join the battle
        virtual void OnPlayerJoinWar(Player* /*player*/) { }
        /// Called when a player leave the battle
        virtual void OnPlayerLeaveWar(Player* /*player*/) { }
        /// Called when a player leave battlefield zone
        virtual void OnPlayerLeaveZone(Player* /*player*/) { }
        /// Called when a player enter in battlefield zone
        virtual void OnPlayerEnterZone(Player* /*player*/) { }

        void SendWarning(uint8 id, WorldObject const* target = nullptr);

        void PlayerAcceptInviteToQueue(Player* player);
        void PlayerAcceptInviteToWar(Player* player);
        uint32 GetBattleId() const { return m_BattleId; }
        void AskToLeaveQueue(Player* player);
        void PlayerAskToLeave(Player* player);

        virtual void DoCompleteOrIncrementAchievement(uint32 /*achievement*/, Player* /*player*/, uint8 /*incrementNumber = 1*/) { }

        /// Return if we can use mount in battlefield
        bool CanFlyIn() { return !m_isActive; }

        void StartBattle();
        void EndBattle(bool endByTimer);

        void HideNpc(Creature* creature);
        void ShowNpc(Creature* creature, bool aggressive);

        GraveyardVect GetGraveyardVector() const { return m_GraveyardList; }

        uint32 GetTimer() const { return m_Timer; }
        void SetTimer(uint32 timer) { m_Timer = timer; }

        void DoPlaySoundToAll(uint32 SoundID);

        void InvitePlayerToQueue(Player* player);
        void InvitePlayerToWar(Player* player);

        void InitStalker(uint32 entry, Position const& pos);

        void ProcessEvent(WorldObject* target, uint32 eventId, WorldObject* invoker) override;
    protected:
        ObjectGuid StalkerGuid;
        uint32 m_Timer;                                         // Global timer for event
        bool m_IsEnabled;
        bool m_isActive;
        TeamId m_DefenderTeam;

        // Map of the objectives belonging to this OutdoorPvP
        ControlZoneHandlerMap ControlZoneHandlers;

        // Players info maps
        GuidUnorderedSet m_players[PVP_TEAMS_COUNT];                      // Players in zone
        GuidUnorderedSet m_PlayersInQueue[PVP_TEAMS_COUNT];               // Players in the queue
        GuidUnorderedSet m_PlayersInWar[PVP_TEAMS_COUNT];                 // Players in WG combat
        PlayerTimerMap m_InvitedPlayers[PVP_TEAMS_COUNT];
        PlayerTimerMap m_PlayersWillBeKick[PVP_TEAMS_COUNT];

        // Variables that must exist for each battlefield
        uint32 m_TypeId;                                        // See enum BattlefieldTypes
        uint32 m_BattleId;                                      // BattleID (for packet)
        uint32 m_ZoneId;                                        // ZoneID of Wintergrasp = 4197
        uint32 m_MapId;                                         // MapId where is Battlefield
        Map* m_Map;
        uint32 m_MaxPlayer;                                     // Maximum number of player that participated to Battlefield
        uint32 m_MinPlayer;                                     // Minimum number of player for Battlefield start
        uint32 m_MinLevel;                                      // Required level to participate at Battlefield
        uint32 m_BattleTime;                                    // Length of a battle
        uint32 m_NoWarBattleTime;                               // Time between two battles
        uint32 m_RestartAfterCrash;                             // Delay to restart Wintergrasp if the server crashed during a running battle.
        uint32 m_TimeForAcceptInvite;
        uint32 m_uiKickDontAcceptTimer;
        WorldLocation KickPosition;                             // Position where players are teleported if they switch to afk during the battle or if they don't accept invitation

        uint32 m_uiKickAfkPlayersTimer;                         // Timer for check Afk in war

        // Graveyard variables
        GraveyardVect m_GraveyardList;                          // Vector witch contain the different GY of the battle

        uint32 m_StartGroupingTimer;                            // Timer for invite players in area 15 minute before start battle
        bool m_StartGrouping;                                   // bool for know if all players in area has been invited

        GuidUnorderedSet m_Groups[PVP_TEAMS_COUNT];              // Contain different raid group

        std::vector<uint64> m_Data64;
        std::vector<uint32> m_Data32;

        void KickAfkPlayers();

        // use for switch off all worldstate for client
        virtual void SendRemoveWorldStates(Player* /*player*/) { }

        // use for send a packet for all player list
        void BroadcastPacketToZone(WorldPacket const* data) const;
        void BroadcastPacketToQueue(WorldPacket const* data) const;
        void BroadcastPacketToWar(WorldPacket const* data) const;

        void RegisterZone(uint32 zoneid);
        bool HasPlayer(Player* player) const;
        void TeamCastSpell(TeamId team, int32 spellId);
};

#endif
