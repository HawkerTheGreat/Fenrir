/datum/appearance_descriptor/age/unathi
	standalone_value_descriptors = list(
		"an infant" =       1,
		"a toddler" =       3,
		"a child" =         7,
		"an adolescent" =  13,
		"a young adult" =  18,
		"an adult" =       25,
		"middle-aged" =    50,
		"aging" =         150,
		"elderly" =       260
	)
////////////////////////////
////	SINTA UNATHI	////
////////////////////////////
/decl/species/unathi
	name = SPECIES_UNATHI
	name_plural = SPECIES_UNATHI
//	icon_template = 'icons/mob/human_races/species/template_tall.dmi'
//	icobase = 'icons/mob/human_races/species/unathi/body.dmi'
//	deform = 'icons/mob/human_races/species/unathi/deformed_body.dmi'
//	husk_icon = 'icons/mob/human_races/species/unathi/husk.dmi'
	preview_icon = 'mods/species/unathi/icons/preview.dmi'
//	bandages_icon = 'icons/mob/bandage.dmi'
//	tail = "sogtail"
//	tail_animation = 'icons/mob/species/unathi/unathi_tail.dmi'
//	limb_blend = ICON_MULTIPLY
//	tail_blend = ICON_MULTIPLY
//	hidden_from_codex = FALSE
	skin_material = /decl/material/solid/skin/lizard

	available_bodytypes = list(
		/decl/bodytype/unathi,
		/decl/bodytype/unathi/masculine
	)

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/tail,
		/decl/natural_attack/claws,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite/sharp
	)

	primitive_form = "Stok"
	darksight_range = 3
//	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	strength = STR_HIGH
	breath_pressure = 18
	slowdown = 0.5
	brute_mod = 0.8
	flash_mod = 1.2
	blood_volume = 800

//	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 2

	age_descriptor = /datum/appearance_descriptor/age/unathi

//	min_age = 25
//	max_age = 260

	body_temperature = null // cold-blooded, implemented the same way nabbers do it

	description = "A heavily reptillian species, Unathi (or 'Sinta as they call themselves) hail from the \
	Uuosa-Eso system, which roughly translates to 'burning mother'.<br/><br/>Coming from a harsh, radioactive \
	desert planet, they mostly hold ideals of honesty, virtue, martial combat and bravery above all \
	else, frequently even their own lives. They prefer warmer temperatures than most species and \
	their native tongue is a heavy hissing laungage called Sinta'Unathi."

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_ROBOTIC_INTERNAL_ORGANS
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34af10"

	reagent_tag = IS_UNATHI
	base_color = "#066000"
	blood_color = "#f24b2e"
	organs_icon = 'mods/species/unathi/icons/organs.dmi'

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 292
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)
	breathing_sound = 'sound/voice/lizard.ogg'

/*	base_auras = list(
		/obj/aura/regenerating/human/unathi
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/diona_heal_toggle
		)
*/
	override_organ_types = list(
		BP_EYES = /obj/item/organ/internal/eyes/unathi,
		BP_BRAIN = /obj/item/organ/internal/brain/unathi
	)

	appearance_descriptors = list(
		/datum/appearance_descriptor/height = 2,
		/datum/appearance_descriptor/build =  2
		)

	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/audible/lizard_bellow
	)

	available_cultural_info = list( //WIP Removed for LORE - HTG
		TAG_CULTURE = list(
			/decl/cultural_info/culture/unathi
//			/decl/cultural_info/culture/unathi_diamond,
//			/decl/cultural_info/culture/unathi_polar,
//			/decl/cultural_info/culture/unathi_desert,
//			/decl/cultural_info/culture/unathi_savannah,
//			/decl/cultural_info/culture/unathi_salt_swamp,
//			/decl/cultural_info/culture/unathi_space,
//			/decl/cultural_info/culture/unathi_tersten
		),
		TAG_HOMEWORLD = list(
//			/decl/cultural_info/location/moghes,
//			/decl/cultural_info/location/ouere,
//			/decl/cultural_info/location/tersten,
			/decl/cultural_info/location/offworld
		),
		TAG_FACTION = list(
//			/decl/cultural_info/faction/unathi,
//			/decl/cultural_info/faction/unathi/ssen_uuma,
//			/decl/cultural_info/faction/unathi/baask,
//			/decl/cultural_info/faction/unathi/gresis,
//			/decl/cultural_info/faction/unathi/tersten,
			/decl/cultural_info/faction/unathi/independent
		),
		TAG_RELIGION =  list(
//			/decl/cultural_info/religion/unathi,
//			/decl/cultural_info/religion/unathi_precursors,
//			/decl/cultural_info/religion/unathi_strat,
//			/decl/cultural_info/religion/unathi_lights,
//			/decl/cultural_info/religion/unathi_markesh,
//			/decl/cultural_info/religion/unathi_ancestor,
			/decl/cultural_info/religion/other
		)
	)
	default_cultural_info = list( //WIP Removed for LORE - HTG
		TAG_CULTURE   = /decl/cultural_info/culture/unathi,
		TAG_HOMEWORLD = /decl/cultural_info/location/offworld,
		TAG_FACTION   = /decl/cultural_info/faction/unathi/independent,
		TAG_RELIGION  = /decl/cultural_info/religion/other
	)
/*	default_cultural_info = list(
		TAG_CULTURE   = /decl/cultural_info/culture/unathi_polar,
		TAG_HOMEWORLD = /decl/cultural_info/location/moghes,
		TAG_FACTION   = /decl/cultural_info/faction/unathi/independent,
		TAG_RELIGION  = /decl/cultural_info/religion/other
	)*/
	pain_emotes_with_pain_level = list(
			list(/decl/emote/audible/wheeze, /decl/emote/audible/roar, /decl/emote/audible/bellow, /decl/emote/audible/howl) = 80,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 20,
		)

	exertion_effect_chance = 10
	exertion_hydration_scale = 1
	exertion_reagent_scale = 5
	exertion_reagent_path = /decl/material/liquid/lactate
	exertion_emotes_biological = list(
		/decl/emote/exertion/biological,
		/decl/emote/exertion/biological/breath,
		/decl/emote/exertion/biological/pant
	)

/decl/species/unathi/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes_str)

/*
/decl/species/unathi/proc/handle_sugar(var/mob/living/carbon/human/M, var/datum/reagent/sugar, var/efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[sugar.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))
*/
/*
/decl/species/unathi/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_UNATHI
*/

////////////////////////////
////	YEOSA UNATHI	////
////////////////////////////

/decl/species/unathi/yeosa
	name = SPECIES_YEOSA
	name_plural = SPECIES_YEOSA

//	genders = list(MALE, FEMALE, PLURAL)
/*
	available_bodytypes = list(
		/decl/bodytype/unathi,
		/decl/bodytype/unathi/masculine
	)*/

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/tail,
		/decl/natural_attack/claws,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite/sharp
	)

	darksight_range = 5
//	darksight_tint = DARKTINT_GOOD
	slowdown = 0.4
	brute_mod = 0.85
	flash_mod = 1.4
	blood_volume = 700
	water_soothe_amount = 5
	description = "A heavily aquatic offshoot of the Sinta species, Yeosa originally hail from the \
	Salt Swamps, leaving their former home for unclear reasons.<br/><br/>Now dwelling in the islands and seas, \
	their culture has diverged majorly from the Sinta, spending less time performing acts of violence and more time socializing. \
	Their biology is heavily attuned to surviving Moghes' dangerous waters, including gills, fins, and a venomous bite."
/*
	base_auras = list(
		/obj/aura/regenerating/human/unathi/yeosa
		)
*/
	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/audible/lizard_bellow,
		/decl/emote/audible/lizard_squeal
	)

	/*additional_available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/unathi_yeosa,
			/decl/cultural_info/culture/unathi_yeosa_abyss
		),
		TAG_FACTION = list(
			/decl/cultural_info/faction/unathi/rahzakeh,
			/decl/cultural_info/faction/unathi/kharza
		),
		TAG_RELIGION = list(
			/decl/cultural_info/religion/unathi_aga_eakhe
		)
	)*/

	default_cultural_info = list(TAG_FACTION = /decl/cultural_info/faction/unathi/independent)

/*
	has_organ = list(
		BP_HEAD =     /obj/item/organ/external/head/yeosa,
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs/gills,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
		)
*/

//After This Broken Code -HTG !! !! !! !!

/*

////////////////////////////
////	VETERIS UNATHI 	////
////////////////////////////

/datum/species/unathi/veteris //All Fixed! - HTG
	name = SPECIES_VETERIS
	name_plural = SPECIES_VETERIS
//	icon_template = 'icons/mob/human_races/species/template.dmi'
//	icobase = 'modular_mithra/icons/mob/human_races/species/humanathi/body.dmi'
//	deform = 'modular_mithra/icons/mob/human_races/species/humanathi/deformed_body.dmi'
//	husk_icon = 'modular_mithra/icons/mob/human_races/species/humanathi/husk.dmi'
	preview_icon = 'mods/species/unathi/icons/subspecies/vet_preview.dmi'
//	bandages_icon = 'icons/mob/bandage.dmi'
//	tail = "sogtail"
//	modular_tail = 'modular_mithra/icons/mob/human_races/species/humanathi/tail.dmi'

	available_bodytypes = list(
		/decl/bodytype/veteris,
		/decl/bodytype/veteris/masculine
	)
	/*
	tail_animation = null //TODO: Add animated tails.
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE
	skin_material =   MATERIAL_SKIN_LIZARD*/

/*	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick,/datum/unarmed_attack/tail, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	primitive_form = "Stok"
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE*/
	gluttonous = GLUT_TINY | GLUT_ITEM_TINY | GLUT_PROJECTILE_VOMIT //Used to eating ash.
//	strength = STR_HIGH
	breath_pressure = 12 //Their lungs are strong.
//	slowdown = 0.5
	brute_mod = 0.8
	flash_mod = 1.4 //More sensitive to light
	metabolism_mod = 0.5 //Lower metabolism.
	blood_volume = SPECIES_BLOOD_DEFAULT // Lower blood than unathi.
	stomach_capacity = 4 //1 less than humans.

//	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR //Less hungry than Unathi
	thirst_factor = DEFAULT_THIRST_FACTOR * 2 //Thirstier than Unathi
	taste_sensitivity = TASTE_SENSITIVE

//	min_age = 25
//	max_age = 260

	body_temperature = null // cold-blooded, implemented the same way nabbers do it

	description = "Known as the Veteris'Unathi, this subspecies of Unathi evolved to survive in the clanless ash-ridden \
	pocket regions of their home planet, also known as \"Ash Plains.\" \
	These regions usually contain dangerous and hostile fauna and megafauna, an atmosphere filled with a high concentration of ash particles, and little to no \
	plant life to snack on. Most Veteris'Unathi have left the dangerous Ash Plains, however generations of exposure to this wasteland have adapted \
	them to eat meat, bones, and bone marrow exclusively, with some eating rocks to assist with digestion of bones. The usual lack of nutrition and slow metabolism, \
	this subspecies of Unathi are generally shorter than their cousins, however they are still excellent candidates for physical activity due to their resilient and efficient lungs."

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34af10"

	reagent_tag = IS_VETERIS
	base_color = "#066000"
	blood_color = "#f24b2e"
	organs_icon = 'icons/mob/human_races/species/unathi/organs.dmi'

	move_trail = /obj/effect/decal/cleanable/blood/tracks/footprints // What marks are left when walking

	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 285
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)
/*	breathing_sound = 'sound/voice/lizard.ogg'

	base_auras = list(
		/obj/aura/regenerating/human/unathi
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/diona_heal_toggle
		)

	override_organ_types = list(
		BP_BRAIN = /obj/item/organ/internal/brain/unathi
	)
*/
	appearance_descriptors = list(
		/datum/appearance_descriptor/height = 0,
		/datum/appearance_descriptor/build =  2
		)
/*
	available_cultural_info = list(
		TAG_CULTURE = list(
			//CULTURE_UNATHI
		),
		TAG_HOMEWORLD = list(
			//HOME_SYSTEM_MOGHES
		),
		TAG_FACTION = list(
		/*	FACTION_UNATHI_POLAR,
			FACTION_UNATHI_DESERT,
			FACTION_UNATHI_SAVANNAH,
			FACTION_UNATHI_DIAMOND_PEAK,
			FACTION_UNATHI_SALT_SWAMP*/
		),
		TAG_RELIGION =  list(
			RELIGION_UNATHI_STRATAGEM,
			RELIGION_UNATHI_PRECURSOR,
			RELIGION_UNATHI_VINE,
			RELIGION_UNATHI_LIGHTS,
			RELIGION_OTHER
		)
	)
*/
/*
	pain_emotes_with_pain_level = list(
		list(/decl/emote/audible/wheeze, /decl/emote/audible/roar, /decl/emote/audible/bellow, /decl/emote/audible/howl) = 80,
		list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
		list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 20,
	)

	autohiss_basic_map = list(
			"s" = list("ss", "sss", "ssss")
		)
	autohiss_extra_map = list(
			"x" = list("ks", "kss", "ksss")
		)
	autohiss_exempt = list(
					LANGUAGE_UNATHI_SINTA,
					LANGUAGE_UNATHI_YEOSA
	)
	*/
/*
/datum/species/humanathi/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_OLDUNATHI
	*/
	*/