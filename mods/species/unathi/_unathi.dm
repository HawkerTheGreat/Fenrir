#define SPECIES_UNATHI  "Unathi"
#define SPECIES_YEOSA	"Yeosa Unathi"
#define SPECIES_VETERIS "Veteris Unathi"

#define BODYTYPE_DIGITI "unathi body"

#define IS_UNATHI	"Unathi"
//#define IS_YEOSA	"Blah, Blah, Useless!"
#define IS_VETERIS "Veteris Unathi"

/decl/modpack/unathi
	name = "Unathi"

/mob/living/carbon/human/unathi/Initialize(mapload)
	..(mapload, SPECIES_UNATHI)
