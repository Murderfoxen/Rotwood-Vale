/datum/advclass/mage
	name = "Mage"
	f_title = "Sorceress"
	tutorial = "Mages are usually grown-up apprentices of wizards. They are seeking adventure, using their arcyne knowledge to aid or ward off other adventurers."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/mage
	category_tags = list(CTAG_ADVENTURER)

/datum/outfit/job/roguetown/adventurer/mage
	allowed_patrons = list(/datum/patron/divine/noc)

/datum/outfit/job/roguetown/adventurer/mage/pre_equip(mob/living/carbon/human/H)

	// CLASS ARCHETYPES
	H.adjust_blindness(-3)
	var/classes = list("Evoker","Arcanist","Enchanter","Spellblade")
	var/classchoice = input("Choose your Specialization", "Available Specializations") as anything in classes

	switch(classchoice)

		if("Evoker")
			H.set_blindness(0)
			to_chat(H, span_warning("You like the raw elements, choosing to specialize in mastering them."))
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/crafting, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/arcane, 3, TRUE)
			H.change_stat("intelligence", 3)
			H.change_stat("perception", 1)
			H.change_stat("constitution", 2)
			H.change_stat("endurance", 2)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fireball)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/forcewall)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch)
		if("Arcanist")
			H.set_blindness(0)
			to_chat(H, span_warning("You chose to specialize in raw arcane manipulation."))
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/crafting, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/arcane, 4, TRUE)
			H.change_stat("intelligence", 3)
			H.change_stat("constitution", 1)
			H.change_stat("endurance", 1)
			H.change_stat("speed", 1)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)
			H.mind.AddSpell(new /obj/projectile/magic/spell/magic_missile)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/forcewall)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch)
		if("Enchanter")
			H.set_blindness(0)
			to_chat(H, span_warning("You specialize in Enchantments and Mental Magick. Unlike most wizards, this leads to a perculiar study between alchemy and Smithing that tends to have you in higher demand in a city."))
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/crafting, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/blacksmithing, pick(1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/armorsmithing, pick(1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/weaponsmithing, pick(1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/smelting, pick(3), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/arcane, 3, TRUE)
			H.change_stat("intelligence", 2)
			H.change_stat("perception", 2)
			H.change_stat("constitution", 1)
			H.change_stat("endurance", 2)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/knock)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/forcewall)


		if("Spellblade")
			H.set_blindness(0)
			to_chat(H, span_warning("Unlike most of your kind, you weave the arts of the blade and magick into a dance."))
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, pick(2,3), TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, pick(0,1,2), TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/crafting, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, pick(0,1), TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/arcane, 2, TRUE)
			H.change_stat("intelligence", 2)
			H.change_stat("perception", 1)
			H.change_stat("speed", 2)
			H.change_stat("constitution", 2)
			H.change_stat("endurance", 2)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/lightningbolt)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/repulse)
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch)


	head = /obj/item/clothing/head/roguetown/roguehood/mage
	shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
	pants = /obj/item/clothing/under/roguetown/trou/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/shortshirt
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/mage
	belt = /obj/item/storage/belt/rogue/leather/rope
	beltr = /obj/item/reagent_containers/glass/bottle/rogue/manapot
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	beltl = /obj/item/rogueweapon/huntingknife
	backl = /obj/item/storage/backpack/rogue/satchel
	r_hand = /obj/item/rogueweapon/woodstaff
	if(classchoice == "Spellblade")
		head = /obj/item/clothing/head/roguetown/bardhat
		beltr = /obj/item/rogueweapon/sword/rapier
		shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
		pants = /obj/item/clothing/under/roguetown/trou/leather
		cloak = /obj/item/clothing/cloak/half
	if(classchoice == "Enchanter")
		head = /obj/item/clothing/head/roguetown/wizhat
		shirt = /obj/item/clothing/suit/roguetown/shirt/robe/merchant
		pants = /obj/item/clothing/under/roguetown/tights/black
		shoes = /obj/item/clothing/shoes/roguetown/shalal

