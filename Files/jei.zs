import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.item.IIngredient;

/* Declare values and variables to make my life easier */
var stoneFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
var bcFacade = <buildcraftsilicon:plug_facade>.withTag({facade: {isHollow: 0 as byte, states: [{state: {Name: "minecraft:cobblestone"}}]}}) as IItemStack;

/*Declare values and variables to make my life easier*/
val RArray = [
	<appliedenergistics2:facade:*>,
	<galacticraftcore:basic_block_core:7>, /* Aluminum Ore */
	<ic2:resource:1>, /* Copper Ore */
	<ic2:resource:2>, /* Tin Ore */
	<ic2:resource:3>, /* Lead Ore */
	<immersiveengineering:ore:*>, /* All IE Ores */
	<iceandfire:silver_ore>, /* Silver Ore */
	<galacticraftcore:basic_block_core:5>, /* Copper Ore*/
	<galacticraftcore:basic_block_core:6>, /* Tin Ore */
	<galacticraftplanets:asteroids_block:3>, /*Aluminum Ore*/
	<galacticraftplanets:asteroids_block:5>, /* Iron Ore */
	<galacticraftplanets:venus:6>, /*Aluminum Ore*/
	<galacticraftplanets:venus:7>, /* Copper Ore */
	<galacticraftplanets:venus:11>, /* Tin Ore */
	<galacticraftplanets:venus:9>, /*Quartz Ore*/
	<galacticraftplanets:mars:0>, /* Copper Ore */
	<galacticraftplanets:mars:1>, /* Tin Ore */
	<galacticraftplanets:mars:3>, /* Iron Ore */
	<galacticraftcore:basic_block_moon:0>, /* Copper Ore */
	<galacticraftcore:basic_block_moon:1>, /* Tin Ore */
	<galacticraftcore:basic_block_core:8>, /* Overworld Silicon */
	<galacticraftcore:basic_item:6>, /* Compressed Copper */
	<galacticraftcore:basic_item:7>, /* Compressed Tin */
	<galacticraftcore:basic_item:8>, /* Compressed Aluminum */
	<galacticraftcore:basic_item:9>, /* Compressed Steel */
	<galacticraftcore:basic_item:10>, /* Compressed Bronze */
	<galacticraftcore:basic_item:11>, /* Compressed Iron */
	<extraplanets:tier4_items:4>, /* Compressed Carbon */
	<extraplanets:tier5_items:6>, /* Compressed Nickel */
	<extraplanets:mercury:3>, /* Iron Ore */
	<extraplanets:mercury:4>, /* Tin Ore */
	<extraplanets:mercury:5>, /* Copper Ore */
	<extraplanets:ceres:3>, /* Iron Ore */
	<extraplanets:ceres:4>, /* Tin Ore */
	<extraplanets:ceres:5>, /* Copper Ore */
	<extraplanets:jupiter:3>, /* Iron Ore */
	<extraplanets:jupiter:4>, /* Tin Ore */
	<extraplanets:jupiter:5>, /* Copper Ore */
	<extraplanets:jupiter:7>, /* Nickel Ore */
	<extraplanets:saturn:3>, /* Iron Ore */
	<extraplanets:saturn:4>, /* Tin Ore */
	<extraplanets:saturn:5>, /* Copper Ore */
	<extraplanets:neptune:3>, /* Iron Ore */
	<extraplanets:neptune:4>, /* Tin Ore */
	<extraplanets:neptune:5>, /* Copper Ore */
	<extraplanets:pluto:3>, /* Iron Ore */
	<extraplanets:pluto:4>, /* Tin Ore */
	<extraplanets:pluto:5>, /* Copper Ore */
	<extraplanets:eris:3>, /* Iron Ore */
	<extraplanets:eris:4>, /* Tin Ore */
	<extraplanets:eris:5>, /* Copper Ore */
	<extraplanets:kepler22b:2>, /* Iron Ore */
	<extraplanets:kepler22b:3>, /* Tin Ore */
	<extraplanets:kepler22b:4>, /* Copper Ore */
	<extraplanets:kepler22b:13>, /* Platinum Ore */
	<extraplanets:europa:3>, /* Iron Ore */
	<extraplanets:europa:4>, /* Tin Ore */
	<extraplanets:europa:5>, /* Copper Ore */
	<extraplanets:io:3>, /* Iron Ore */
	<extraplanets:io:4>, /* Tin Ore */
	<extraplanets:io:5>, /* Copper Ore */
	<extraplanets:deimos:3>, /* Iron Ore */
	<extraplanets:deimos:4>, /* Tin Ore */
	<extraplanets:deimos:5>, /* Copper Ore */
	<extraplanets:phobos:3>, /* Iron Ore */
	<extraplanets:phobos:4>, /* Tin Ore */
	<extraplanets:phobos:5>, /* Copper Ore */
	<extraplanets:triton:3>, /* Iron Ore */
	<extraplanets:triton:4>, /* Tin Ore */
	<extraplanets:triton:5>, /* Copper Ore */
	<extraplanets:callisto:3>, /* Iron Ore */
	<extraplanets:callisto:4>, /* Tin Ore */
	<extraplanets:callisto:5>, /* Copper Ore */
	<extraplanets:ganymede:3>, /* Iron Ore */
	<extraplanets:ganymede:4>, /* Tin Ore */
	<extraplanets:ganymede:5>, /* Copper Ore */
	<extraplanets:rhea:3>, /* Iron Ore */
	<extraplanets:rhea:4>, /* Tin Ore */
	<extraplanets:rhea:5>, /* Copper Ore */
	<extraplanets:titan:3>, /* Iron Ore */
	<extraplanets:titan:4>, /* Tin Ore */
	<extraplanets:titan:5>, /* Copper Ore */
	<extraplanets:oberon:3>, /* Iron Ore */
	<extraplanets:oberon:4>, /* Tin Ore */
	<extraplanets:oberon:5>, /* Copper Ore */
	<extraplanets:titania:3>, /* Iron Ore */
	<extraplanets:titania:4>, /* Tin Ore */
	<extraplanets:titania:5>, /* Copper Ore */
	<extraplanets:iapetus:3>, /* Iron Ore */
	<extraplanets:iapetus:4>, /* Tin Ore */
	<extraplanets:iapetus:5>, /* Copper Ore */
	<extraplanets:wafer>, /* Unused Diamond Wafer */
	<extraplanets:wafer:1>, /* Unused Carbon Wafer */
	<moreplanets:diona_tin_ore>, /* Tin Ore*/
	<moreplanets:diona_copper_ore>, /* Copper Ore */
	<moreplanets:diona_aluminum_ore>, /* Aluminum Ore */
	<moreplanets:koentus_tin_ore>, /* Tin Ore */
	<moreplanets:koentus_copper_ore>, /* Copper Ore */
	<moreplanets:koentus_aluminum_ore>, /* Aluminum Ore */
	<moreplanets:koentus_iron_ore>, /* Iron Ore */
	<moreplanets:chalos_iron_ore>, /* Iron Ore */
	<moreplanets:chalos_tin_ore>, /* Tin Ore */
	<moreplanets:chalos_copper_ore>, /* Copper Ore */
	<moreplanets:chalos_aluminum_ore>, /* Aluminum Ore */
	<moreplanets:infected_coal_ore>, /* Coal Ore */
	<moreplanets:infected_iron_ore>, /* Iron Ore */
	<moreplanets:infected_gold_ore>, /* Gold Ore */
	<moreplanets:infected_diamond_ore>, /* Diamond Ore */
	<moreplanets:infected_redstone_ore>, /* Redstone Ore */
	<moreplanets:infected_lapis_ore>, /* Lapis Ore */
	<moreplanets:infected_emerald_ore>, /* Emerald Ore */
	<moreplanets:infected_aluminum_ore>, /* Aluminum Ore */
	<moreplanets:infected_copper_ore>, /* Copper Ore */
	<moreplanets:infected_tin_ore>, /* Tin Ore */
	<moreplanets:fronos_iron_ore>, /* Iron Ore */
	<moreplanets:fronos_gold_ore>, /* Gold Ore */
	<moreplanets:fronos_tin_ore>, /* Tin Ore */
	<moreplanets:fronos_copper_ore>, /* Copper Ore */
	<moreplanets:fronos_aluminum_ore>, /* Aluminum Ore */
	<moreplanets:fronos_lead_ore>, /* Lead Ore */
	<moreplanets:fronos_coal_ore>, /* Coal Ore */
	<moreplanets:fronos_lapis_ore>, /* Lapis Ore */
	<moreplanets:fronos_diamond_ore>, /* Diamond Ore */
	<moreplanets:fronos_emerald_ore>, /* Emerald Ore */
	<moreplanets:fronos_redstone_ore>, /* Redstone Ore */
	<moreplanets:fronos_quartz_ore>, /* Quartz Ore */
	<actuallyadditions:block_misc:5>,
	<chisel:block_charcoal2>,
	<buildcraftbuilders:builder>,
	<buildcraftbuilders:frame>,
	<buildcraftbuilders:replacer>,
	<buildcraftbuilders:filler>,
	<buildcraftbuilders:filler_planner>,
	<buildcraftcore:spring>,
	<buildcraftcore:spring:1>,
	<buildcraftenergy:glob_of_oil>,
	<buildcraftbuilders:library>,
	<buildcraftbuilders:replacer>,
	<buildcraftcore:decorated>,
	<buildcraftcore:decorated:1>,
	<buildcraftcore:decorated:2>,
	<buildcraftcore:decorated:3>,
	<buildcraftcore:decorated:4>,
	<buildcraftcore:volume_box>,
	<buildcraftlib:debugger>,
	<buildcraftlib:guide_note>,
	<draconicevolution:draconium_block:1>,
	<enderio:item_material:5>,
	<extracells:part.base>,
	<extracells:part.base:1>,
	<extracells:part.base:2>,
	<extracells:part.base:3>,
	<extracells:part.base:4>,
	<extracells:part.base:5>,
	<extracells:part.base:6>,
	<extracells:part.base:9>,
	<extracells:storage.fluid>,
	<extracells:storage.fluid:1>,
	<extracells:storage.fluid:2>,
	<extracells:storage.fluid:3>,
	<extracells:storage.component:4>,
	<extracells:storage.component:5>,
	<extracells:storage.component:6>,
	<extracells:storage.component:7>,
	<theoneprobe:creativeprobe>,
	<abyssalcraft:abytinore>,
	<abyssalcraft:abycopore>,
	<abyssalcraft:abyiroore>,
	<actuallyadditions:item_food:17>
] as IItemStack[];
var HArray = [
	<galacticraftplanets:basic_item_venus:1>,
	<buildcraftcore:gear_wood>,
	<buildcraftcore:gear_stone>,
	<buildcraftcore:gear_diamond>,
	<enderio:item_material:9>,
	<enderio:item_material:10>,
	<appliedenergistics2:material:40>,
	<thermalfoundation:material:27>,
	<thermalfoundation:material:260>,
	<thermalfoundation:material:262>,
	<thermalfoundation:material:263>,
	<thermalfoundation:material:264>,
	<thermalfoundation:material:288>,
	<thermalfoundation:material:295>,
	<thermalfoundation:material:326>,
	<thermalfoundation:material:327>,
	<thermalfoundation:material:328>,
	<immersiveengineering:pickaxe_steel>,
	<immersiveengineering:shovel_steel>,
	<immersiveengineering:axe_steel>,
	<immersiveengineering:sword_steel>,
	<galacticraftcore:steel_pickaxe>,
	<galacticraftcore:steel_axe>,
	<galacticraftcore:steel_hoe>,
	<galacticraftcore:steel_shovel>,
	<galacticraftcore:steel_sword>,
	<galacticraftcore:steel_helmet>,
	<galacticraftcore:steel_chestplate>,
	<galacticraftcore:steel_leggings>,
	<galacticraftcore:steel_boots>,
	<solarflux:solar_panel_alchemical_brass>,
	<solarflux:solar_panel_thaumium>,
	<solarflux:solar_panel_void_metal>,
	<moreplanets:laser_gun:*>,
	<extracells:storage.casing:1>,
	<theoneprobe:probe>,
	<theoneprobe:diamond_helmet_probe>,
	<theoneprobe:gold_helmet_probe>,
	<theoneprobe:iron_helmet_probe>,
	<theoneprobe:probe_goggles>,
	<thermalfoundation:tool.sword_silver>,
	<thermalfoundation:tool.shovel_silver>,
	<thermalfoundation:tool.pickaxe_silver>,
	<thermalfoundation:tool.axe_silver>,
	<thermalfoundation:tool.hoe_silver>,
	<iceandfire:armor_silver_metal_boots>,
	<iceandfire:armor_silver_metal_helmet>,
	<iceandfire:armor_silver_metal_chestplate>,
	<iceandfire:armor_silver_metal_leggings>
] as IItemStack[];

/* Hide all items necessary for this script to work*/
for item in RArray{
	JEI.hide(item);
}
for item in HArray{
	JEI.removeAndHide(item);
}
JEI.hide(
	<buildcraftsilicon:plug_facade>.withTag({facade: {isHollow: 0 as byte, states: [{state: {Properties: {variant: "stone"}, Name: "minecraft:stone"}}, {state: {Properties: {variant: "oak"}, Name: "minecraft:planks"}, activeColour: "RED"}, {state: {Properties: {variant: "oak", axis: "y"}, Name: "minecraft:log"}, activeColour: "CYAN"}]}})
);