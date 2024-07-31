/obj/effect/proc_holder/spell/aoe_turf/conjure/the_traps
	name = "Summon Rune"
	desc = ""

	charge_max = 250
	cooldown_min = 50

	clothes_req = FALSE
	invocation = "CAVERE INSIDIAS"
	invocation_type = "whisper"
	range = 1
	releasedrain = 30
	chargedrain = 1
	chargetime = 15
	charge_max = 20 SECONDS
	warnie = "spellwarning"
	no_early_release = TRUE
	movement_interrupt = FALSE
	charging_slowdown = 3
	chargedloop = /datum/looping_sound/invokegen
	associated_skill = /datum/skill/magic/arcane

	summon_type = list(
		/obj/structure/trap/stun,
		/obj/structure/trap/fire,
		/obj/structure/trap/chill,
		/obj/structure/trap/damage
	)
	summon_lifespan = 3000
	summon_amt = 1

	action_icon_state = "the_traps"

/obj/effect/proc_holder/spell/aoe_turf/conjure/the_traps/post_summon(obj/structure/trap/T, mob/user)
	T.immune_minds += user.mind
	T.charges = 3
