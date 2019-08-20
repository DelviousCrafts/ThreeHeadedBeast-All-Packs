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
	<moreplanets:diona_block:6>, /* Tin Ore*/
	<moreplanets:diona_block:7>, /* Copper Ore */
	<moreplanets:diona_block:8>, /* Aluminum Ore */
	<moreplanets:koentus_block:6>, /* Tin Ore */
	<moreplanets:koentus_block:7>, /* Copper Ore */
	<moreplanets:koentus_block:8>, /* Aluminum Ore */
	<moreplanets:koentus_block:9>, /* Iron Ore */
	<moreplanets:chalos_block:5>, /* Iron Ore */
	<moreplanets:chalos_block:6>, /* Tin Ore */
	<moreplanets:chalos_block:7>, /* Copper Ore */
	<moreplanets:chalos_block:8>, /* Aluminum Ore */
	<moreplanets:nibiru_ore>, /* Coal Ore */
	<moreplanets:nibiru_ore:1>, /* Iron Ore */
	<moreplanets:nibiru_ore:2>, /* Gold Ore */
	<moreplanets:nibiru_ore:3>, /* Diamond Ore */
	<moreplanets:nibiru_ore:4>, /* Redstone Ore */
	<moreplanets:nibiru_ore:5>, /* Lapis Ore */
	<moreplanets:nibiru_ore:6>, /* Emerald Ore */
	<moreplanets:nibiru_ore:7>, /* Aluminum Ore */
	<moreplanets:nibiru_ore:8>, /* Copper Ore */
	<moreplanets:nibiru_ore:9>, /* Tin Ore */
	<moreplanets:fronos_ore>, /* Iron Ore */
	<moreplanets:fronos_ore:1>, /* Gold Ore */
	<moreplanets:fronos_ore:2>, /* Tin Ore */
	<moreplanets:fronos_ore:3>, /* Copper Ore */
	<moreplanets:fronos_ore:4>, /* Aluminum Ore */
	<moreplanets:fronos_ore:5>, /* Lead Ore */
	<moreplanets:fronos_ore:6>, /* Coal Ore */
	<moreplanets:fronos_ore:7>, /* Lapis Ore */
	<moreplanets:fronos_ore:8>, /* Diamond Ore */
	<moreplanets:fronos_ore:9>, /* Emerald Ore */
	<moreplanets:fronos_ore:10>, /* Redstone Ore */
	<moreplanets:fronos_ore:12>, /* Quartz Ore */
	<actuallyadditions:block_misc:5>,
	<chisel:block_charcoal2>,
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
	<actuallyadditions:item_food:17>,
	<avaritia:skullfire_sword>,
	<ic2:lappack>
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
	<iceandfire:armor_silver_metal_leggings>,
	<natura:maple_button>,
	<natura:maple_pressure_plate>,
	<natura:silverbell_button>,
	<natura:silverbell_pressure_plate>,
	<natura:maple_trap_door>,
	<natura:tiger_trap_door>,
	<natura:willow_button>,
	<natura:willow_trap_door>,
	<natura:eucalyptus_button>,
	<natura:eucalyptus_pressure_plate>,
	<natura:eucalyptus_trap_door>,
	<natura:hopseed_button>,
	<natura:hopseed_pressure_plate>,
	<natura:hopseed_trap_door>,
	<natura:sakura_button>,
	<natura:sakura_pressure_plate>,
	<natura:sakura_trap_door>,
	<natura:redwood_button>,
	<natura:redwood_trap_door>,
	<natura:redwood_pressure_plate>,
	<natura:willow_pressure_plate>,
	<natura:ghostwood_button>,
	<natura:ghostwood_pressure_plate>,
	<natura:ghostwood_trap_door>,
	<natura:bloodwood_button>,
	<natura:bloodwood_pressure_plate>,
	<natura:bloodwood_trap_door>,
	<natura:fusewood_button>,
	<natura:fusewood_pressure_plate>,
	<natura:fusewood_trap_door>,
	<natura:darkwood_button>,
	<natura:darkwood_pressure_plate>,
	<natura:darkwood_trap_door>,
	<natura:tiger_button>,
	<natura:tiger_pressure_plate>,
	<natura:amaranth_pressure_plate>,
	<natura:amaranth_trap_door>,
	<natura:silverbell_trap_door>,
	<natura:overworld_workbenches>,
	<natura:overworld_workbenches:1>,
	<natura:overworld_workbenches:2>,
	<natura:overworld_workbenches:3>,
	<natura:overworld_workbenches:4>,
	<natura:overworld_workbenches:5>,
	<natura:overworld_workbenches:6>,
	<natura:overworld_workbenches:7>,
	<natura:overworld_workbenches:8>,
	<natura:nether_workbenches>,
	<natura:nether_workbenches:1>,
	<natura:nether_workbenches:2>,
	<natura:nether_workbenches:3>,
	<natura:ghostwood_sword>,
	<natura:ghostwood_pickaxe>,
	<natura:ghostwood_shovel>,
	<natura:ghostwood_axe>,
	<natura:ghostwood_kama>,
	<natura:ghostwood_bow>,
	<natura:bloodwood_sword>,
	<natura:bloodwood_pickaxe>,
	<natura:bloodwood_shovel>,
	<natura:bloodwood_axe>,
	<natura:bloodwood_kama>,
	<natura:bloodwood_bow>,
	<natura:darkwood_sword>,
	<natura:darkwood_pickaxe>,
	<natura:darkwood_shovel>,
	<natura:darkwood_axe>,
	<natura:darkwood_kama>,
	<natura:darkwood_bow>,
	<natura:fusewood_sword>,
	<natura:fusewood_pickaxe>,
	<natura:fusewood_shovel>,
	<natura:fusewood_axe>,
	<natura:fusewood_kama>,
	<natura:fusewood_bow>,
	<natura:netherquartz_sword>,
	<natura:netherquartz_pickaxe>,
	<natura:netherquartz_shovel>,
	<natura:netherquartz_axe>,
	<natura:netherquartz_kama>,
	<natura:sticks>,
	<natura:sticks:1>,
	<natura:sticks:2>,
	<natura:sticks:3>,
	<natura:sticks:4>,
	<natura:sticks:5>,
	<natura:sticks:6>,
	<natura:sticks:7>,
	<natura:sticks:8>,
	<natura:sticks:9>,
	<natura:sticks:10>,
	<natura:sticks:11>,
	<natura:sticks:12>,
	<quark:vertical_planks>,
	<quark:vertical_planks:1>,
	<quark:vertical_planks:2>,
	<quark:vertical_planks:3>,
	<quark:vertical_planks:4>,
	<quark:vertical_planks:5>,
	<quark:vertical_stained_planks>,
	<quark:vertical_stained_planks:1>,
	<quark:vertical_stained_planks:2>,
	<quark:vertical_stained_planks:3>,
	<quark:vertical_stained_planks:4>,
	<quark:vertical_stained_planks:5>,
	<quark:vertical_stained_planks:6>,
	<quark:vertical_stained_planks:7>,
	<quark:vertical_stained_planks:8>,
	<quark:vertical_stained_planks:9>,
	<quark:vertical_stained_planks:10>,
	<quark:vertical_stained_planks:11>,
	<quark:vertical_stained_planks:12>,
	<quark:vertical_stained_planks:13>,
	<quark:vertical_stained_planks:14>,
	<quark:vertical_stained_planks:15>
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