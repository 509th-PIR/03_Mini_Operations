//counts of items 
#define AMOUNT_2(item) item , item
#define AMOUNT_3(item) item , item , item
#define AMOUNT_4(item) item , item , item , item
#define AMOUNT_5(item) item , item , item , item , item
#define AMOUNT_6(item) item , item , item , item , item, item 
#define AMOUNT_7(item) item , item , item , item , item, item, item
#define AMOUNT_8(item) item , item , item , item , item, item, item , item
#define AMOUNT_9(item) item , item , item , item , item, item, item , item , item
#define AMOUNT_10(item) item , item , item , item , item, item, item , item , item, item 
#define AMOUNT_11(item) item , item , item , item , item, item, item , item , item , item , item
#define AMOUNT_12(item) item , item , item , item , item, item, item , item , item , item , item , item 

//magazines[]
#define DEFAULT_THROWABLES \
	AMOUNT_2("ACE_Chemlight_HiBlue"), \
	AMOUNT_2("ACE_Chemlight_HiGreen"), \
	AMOUNT_4("rhs_mag_an_m8hc"), \
	AMOUNT_2("SmokeShellBlue"), \
	AMOUNT_2("SmokeShellGreen"), \
	AMOUNT_2("HandGrenade")
//items[]
#define DEFAULT_MEDICAL \
 	AMOUNT_2("ACE_morphine"), \
	AMOUNT_2("ACE_epinephrine") ,\
	AMOUNT_10("ACE_quikclot"), \
	AMOUNT_10("ACE_packingBandage"), \
	AMOUNT_5("ACE_tourniquet")
//items[]
#define DEFAULT_MISC_ITEMS \
 	AMOUNT_2("ACE_CableTie"), \
	AMOUNT_2("ACE_EarPlugs") ,\
	AMOUNT_2("ACE_SpraypaintRed"), \
	"ACE_Flashlight_XL50", \
	"ACE_MapTools", \
	"ACE_EntrenchingTool"
//items[] + DEFAULT_MISC_ITEMS + DEFAULT_MEDICAL
#define DEFAULT_ITEMS \
	DEFAULT_MEDICAL, \
	DEFAULT_MISC_ITEMS

//Gear common to all linkedItems[] 
#define GEAR_COMMON \
	"rhs_googles_clear", \
	"ItemMap", \
	"ItemCompass", \
	"TFAR_microdagr",\
	"TFAR_anprc152", \
	"rhsusf_ANPVS_15"