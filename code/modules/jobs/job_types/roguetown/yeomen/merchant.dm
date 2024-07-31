/datum/job/roguetown/merchant
	title = "Merchant Prince"
	flag = MERCHANT
	department_flag = YEOMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	selection_color = JCOLOR_YEOMAN
	allowed_races = RACES_ALL_KINDS
	tutorial = "You serve the Magi's Trading Union. Your role is that of a Master Coinsman as much as a Transmutation Mage. Of course, that made you a Noble as much as a valuable political power in the city of dreams. Adventurers respect you, and hound you all the same. Always after some new gear, or a potion - no doubt."

	display_order = JDO_MERCHANT

	outfit = /datum/outfit/job/roguetown/merchant
	give_bank_account = 22
	min_pq = 1
	max_pq = null
	required = TRUE

	cmode_music = 'sound/music/combat_giza.ogg'

/datum/outfit/job/roguetown/merchant/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(3,4,4), TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/stealing, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/alchemy, rand(2,4), TRUE)
	H.mind.adjust_skillrank(/datum/skill/labor/mathematics, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/magic/arcane, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fireball)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch)
	H.mind.AddSpell(new /obj/projectile/magic/spell/magic_missile)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/forcewall)

	ADD_TRAIT(H, TRAIT_SEEPRICES, type)
	head = /obj/item/clothing/head/roguetown/chaperon
	neck = /obj/item/clothing/neck/roguetown/horus
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/merchant
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor
	pants = /obj/item/clothing/under/roguetown/tights/sailor
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltl = /obj/item/keyring/merchant
	beltr = /obj/item/storage/belt/rogue/pouch/coins/rich
	id = /obj/item/clothing/ring/gold
	if(H.gender == MALE)
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather
		H.dna.species.soundpack_m = new /datum/voicepack/male/wizard()
	else
		shoes = /obj/item/clothing/shoes/roguetown/gladiator
	H.change_stat("intelligence", 2)
	H.change_stat("perception", 3)
	H.change_stat("strength", -1)
