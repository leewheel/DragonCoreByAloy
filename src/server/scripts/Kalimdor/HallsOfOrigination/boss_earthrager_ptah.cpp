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

#include "ScriptMgr.h"
#include "Containers.h"
#include "halls_of_origination.h"
#include "InstanceScript.h"
#include "Map.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"
#include "TemporarySummon.h"
#include "Weather.h"

enum Texts
{
    SAY_AGGRO                       = 0,
    SAY_DEATH                       = 1,
};

enum Events
{
    EVENT_RAGING_SMASH              = 1,
    EVENT_FLAME_BOLT                = 2,
    EVENT_EARTH_SPIKE               = 3,
    EVENT_PTAH_EXPLODE              = 4,
    EVENT_QUICKSAND                 = 5,
};

enum Spells
{
    SPELL_RAGING_SMASH              = 83650,
    SPELL_FLAME_BOLT                = 77370,
    SPELL_EARTH_SPIKE_WARN          = 94974,

    SPELL_PTAH_EXPLOSION            = 75519,
    SPELL_SANDSTORM                 = 75491,

    SPELL_SUMMON_QUICKSAND          = 75550, // Spell not in DBC, no SMSG_SPELL_START/GO for it

    SPELL_BEETLE_BURROW             = 75463,

    SPELL_SUMMON_JEWELED_SCARAB     = 75462,
    SPELL_SUMMON_DUSTBONE_HORROR    = 75521,
};

enum Phases
{
    PHASE_NORMAL                    = 1,
    PHASE_DISPERSE                  = 2,

    PHASE_MASK_DISPERSE             = (1 << PHASE_DISPERSE),
    PHASE_MASK_NORMAL               = (1 << PHASE_NORMAL),
};

enum PtahData
{
    DATA_SUMMON_DEATHS              = 0
};

class SummonScarab : public BasicEvent
{
public:
    SummonScarab(Unit* owner, InstanceScript* instance) : _owner(owner), _instance(instance) { }

    bool Execute(uint64 /*execTime*/, uint32 /*diff*/) override
    {
        if (!_instance || _instance->GetBossState(BOSS_EARTHRAGER_PTAH) != IN_PROGRESS)
            return true;    // delete event

        _owner->CastSpell(_owner, SPELL_SUMMON_JEWELED_SCARAB);
        _owner->RemoveAurasDueToSpell(SPELL_BEETLE_BURROW);
        return true;
    }
protected:
    Unit* _owner;
    InstanceScript* _instance;
};

struct boss_earthrager_ptah : public BossAI
{
    boss_earthrager_ptah(Creature* creature) : BossAI(creature, BOSS_EARTHRAGER_PTAH), _summonDeaths(0), _hasDispersed(false) { }

    void Cleanup()
    {
        std::list<Creature*> units;

        GetCreatureListWithEntryInGrid(units, me, NPC_DUSTBONE_HORROR, 100.0f);
        for (std::list<Creature*>::iterator itr = units.begin(); itr != units.end(); ++itr)
            (*itr)->DespawnOrUnsummon();

        units.clear();
        GetCreatureListWithEntryInGrid(units, me, NPC_JEWELED_SCARAB, 100.0f);
        for (std::list<Creature*>::iterator itr = units.begin(); itr != units.end(); ++itr)
            (*itr)->DespawnOrUnsummon();
    }

    void Reset() override
    {
        me->SetCanMelee(true);
        _summonDeaths = 0;
        _hasDispersed = false;
        Cleanup();
        _Reset();
        events.SetPhase(PHASE_NORMAL);
        events.ScheduleEvent(EVENT_RAGING_SMASH, 7s, 12s, 0, PHASE_NORMAL);
        events.ScheduleEvent(EVENT_FLAME_BOLT, 15s, 0, PHASE_NORMAL);
        events.ScheduleEvent(EVENT_EARTH_SPIKE, 16s, 21s, 0, PHASE_NORMAL);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellInfo const* /*spellInfo = nullptr*/) override
    {
        if (me->HealthBelowPctDamaged(50, damage) && (events.GetPhaseMask() & PHASE_MASK_NORMAL) && !_hasDispersed)
        {
            events.SetPhase(PHASE_DISPERSE);
            _hasDispersed = true;

            me->AttackStop();
            me->SetCanMelee(false);
            DoCast(me, SPELL_SANDSTORM);
            me->GetMap()->SetZoneWeather(AREA_TOMB_OF_THE_EARTHRAGER, WEATHER_STATE_LIGHT_SANDSTORM, 1.0f);
            events.ScheduleEvent(EVENT_PTAH_EXPLODE, 6s, 0, PHASE_DISPERSE);
            events.ScheduleEvent(EVENT_QUICKSAND, 10s, 0, PHASE_DISPERSE);

            std::list<Creature*> stalkers;
            GetCreatureListWithEntryInGrid(stalkers, me, NPC_BEETLE_STALKER, 100.0f);
            std::list<Creature*> beetlers = stalkers;

            Trinity::Containers::RandomResize(beetlers, 9); // Holds the summoners of Jeweled Scarab

            for (std::list<Creature*>::iterator itr = beetlers.begin(); itr != beetlers.end(); ++itr)
            {
                stalkers.remove((*itr)); // Remove it to prevent a single trigger from spawning multiple npcs.
                (*itr)->CastSpell((*itr), SPELL_BEETLE_BURROW); // Cast visual
                // Summon after 5 seconds.
                (*itr)->m_Events.AddEventAtOffset(new SummonScarab((*itr), instance), 5s);
            }

            Trinity::Containers::RandomResize(stalkers, 2); // Holds the summoners of Dustbone Horror

            for (std::list<Creature*>::iterator itr = stalkers.begin(); itr != stalkers.end(); ++itr)
                (*itr)->CastSpell((*itr), SPELL_SUMMON_DUSTBONE_HORROR);
        }
    }

    void SetData(uint32 index, uint32 /*value*/) override
    {
        if (index == DATA_SUMMON_DEATHS)
        {
            ++_summonDeaths;
            if (_summonDeaths == 11) // All summons died
            {
                me->GetMap()->SetZoneWeather(AREA_TOMB_OF_THE_EARTHRAGER, WEATHER_STATE_FOG, 0.0f);
                me->RemoveAurasDueToSpell(SPELL_PTAH_EXPLOSION);
                me->SetCanMelee(true);
                events.SetPhase(PHASE_NORMAL);
                events.ScheduleEvent(EVENT_RAGING_SMASH, 7s, 12s, 0, PHASE_NORMAL);
                events.ScheduleEvent(EVENT_FLAME_BOLT, 15s, 0, PHASE_NORMAL);
                events.ScheduleEvent(EVENT_EARTH_SPIKE, 16s, 21s, 0, PHASE_NORMAL);
            }
        }
    }

    void JustEngagedWith(Unit* who) override
    {
        instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);
        Talk(SAY_AGGRO);
        BossAI::JustEngagedWith(who);
    }

    void JustDied(Unit* /*killer*/) override
    {
        instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        Talk(SAY_DEATH);
        _JustDied();
        Cleanup();
    }

    void JustReachedHome() override
    {
        instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        _JustReachedHome();
        instance->SetBossState(BOSS_EARTHRAGER_PTAH, FAIL);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim() || !CheckInRoom())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_RAGING_SMASH:
                    DoCastVictim(SPELL_RAGING_SMASH);
                    events.ScheduleEvent(EVENT_RAGING_SMASH, 7s, 12s, 0, PHASE_NORMAL);
                    break;
                case EVENT_FLAME_BOLT:
                    DoCast(me, SPELL_FLAME_BOLT);
                    events.ScheduleEvent(EVENT_FLAME_BOLT, 15s, 0, PHASE_NORMAL);
                    break;
                case EVENT_EARTH_SPIKE:
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0f, true))
                        DoCast(target, SPELL_EARTH_SPIKE_WARN);
                    events.ScheduleEvent(EVENT_EARTH_SPIKE, 16s, 21s, 0, PHASE_NORMAL);
                    break;
                case EVENT_PTAH_EXPLODE:
                    DoCast(me, SPELL_PTAH_EXPLOSION);
                    break;
                case EVENT_QUICKSAND:
                    // Spell not in DBC, it is not cast either, according to sniffs
                    if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0f, true))
                        if (Creature* quicksand = me->SummonCreature(NPC_QUICKSAND, *target))
                            quicksand->SetCreatedBySpell(SPELL_SUMMON_QUICKSAND);
                    events.ScheduleEvent(EVENT_QUICKSAND, 10s, 0, PHASE_DISPERSE);
                    break;
            }
        }
    }

protected:
    uint8 _summonDeaths;
    bool _hasDispersed;
};

class spell_earthrager_ptah_flame_bolt : public SpellScript
{
    void FilterTargets(std::list<WorldObject*>& targets)
    {
        Trinity::Containers::RandomResize(targets, GetCaster()->GetMap()->IsHeroic() ? 3 : 2);
    }

    void Register() override
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_earthrager_ptah_flame_bolt::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
    }
};

class spell_earthrager_ptah_explosion : public AuraScript
{
    void SetFlags(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* ptah = GetCaster())
        {
            ptah->SetUninteractible(true);
            ptah->SetUnitFlag(UNIT_FLAG_PREVENT_EMOTES_FROM_CHAT_TEXT);
            ptah->SetUnitFlag2(UNIT_FLAG2_FEIGN_DEATH);
        }
    }

    void RemoveFlags(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* ptah = GetCaster())
        {
            ptah->SetUninteractible(false);
            ptah->RemoveUnitFlag(UNIT_FLAG_PREVENT_EMOTES_FROM_CHAT_TEXT);
            ptah->RemoveUnitFlag2(UNIT_FLAG2_FEIGN_DEATH);
        }
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_earthrager_ptah_explosion::SetFlags, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        OnEffectRemove += AuraEffectRemoveFn(spell_earthrager_ptah_explosion::RemoveFlags, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
    }
};

void AddSC_boss_earthrager_ptah()
{
    RegisterHallsOfOriginationCreatureAI(boss_earthrager_ptah);
    RegisterSpellScript(spell_earthrager_ptah_flame_bolt);
    RegisterSpellScript(spell_earthrager_ptah_explosion);
}
