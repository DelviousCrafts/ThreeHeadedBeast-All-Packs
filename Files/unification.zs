import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.Compactor;
import mods.immersiveengineering.MetalPress;

/* Declare values and variables to make my life easier */
var PArray = [
	<thermalfoundation:material:32>,
	<thermalfoundation:material:33>,
	<thermalfoundation:material:320>,
	<thermalfoundation:material:321>,
	<thermalfoundation:material:322>,
	<thermalfoundation:material:323>,
	<thermalfoundation:material:324>,
	<thermalfoundation:material:325>,
	<thermalfoundation:material:352>,
	<thermalfoundation:material:353>,
	<thermalfoundation:material:354>,
	<thermalfoundation:material:355>,
	<thermalfoundation:material:356>,
	<thermalfoundation:material:357>,
	<thermalfoundation:material:358>,
	<actuallyadditions:item_misc:5>,
	<actuallyadditions:block_misc:5>,
	<chisel:block_charcoal2>	
]as IItemStack[];
var QArray = [
	<actuallyadditions:item_misc:5>,
	<botania:quartz:*>
] as IItemStack[];
var GArray = [
	<thermalfoundation:material:22>, /* Wood Gear */
	<thermalfoundation:material:24>, /* Iron Gear */
	<thermalfoundation:material:25>, /* Gold Gear */
	<thermalfoundation:material:26>, /* Diamond Gear */
	<thermalfoundation:material:256>, /* Copper Gear */
	<thermalfoundation:material:257>, /* Tin Gear */
	<thermalfoundation:material:258>, /* Silver Gear */
	<thermalfoundation:material:259>, /* Lead Gear */
	<thermalfoundation:material:261>, /* Nickel Gear */
	<thermalfoundation:material:289>, /* Electrum Gear */
	<thermalfoundation:material:290>, /* Invar Gear */
	<thermalfoundation:material:291>, /* Bronze Gear */
	<thermalfoundation:material:292>, /* Constantan Gear */
	<thermalfoundation:material:293>, /* Signalum Gear */
	<thermalfoundation:material:294> /* Lumium Gear */
] as IItemStack[];
var LArray = [
	<galacticraftcore:oxygen_tank_light_full:*>,
	<extraplanets:oxygen_tank_light_full_black:*>,
	<extraplanets:oxygen_tank_light_full_red:*>,
	<extraplanets:oxygen_tank_light_full_green:*>,
	<extraplanets:oxygen_tank_light_full_brown:*>,
	<extraplanets:oxygen_tank_light_full_blue:*>,
	<extraplanets:oxygen_tank_light_full_purple:*>,
	<extraplanets:oxygen_tank_light_full_cyan:*>,
	<extraplanets:oxygen_tank_light_full_light_gray:*>,
	<extraplanets:oxygen_tank_light_full_gray:*>,
	<extraplanets:oxygen_tank_light_full_pink:*>,
	<extraplanets:oxygen_tank_light_full_yellow:*>,
	<extraplanets:oxygen_tank_light_full_light_blue:*>,
	<extraplanets:oxygen_tank_light_full_magenta:*>,
	<extraplanets:oxygen_tank_light_full_orange:*>,
	<extraplanets:oxygen_tank_light_full_white:*>
] as IItemStack[];
var MArray = [
	<galacticraftcore:oxygen_tank_med_full:*>,
	<extraplanets:oxygen_tank_med_full_black:*>,
	<extraplanets:oxygen_tank_med_full_red:*>,
	<extraplanets:oxygen_tank_med_full_green:*>,
	<extraplanets:oxygen_tank_med_full_brown:*>,
	<extraplanets:oxygen_tank_med_full_blue:*>,
	<extraplanets:oxygen_tank_med_full_purple:*>,
	<extraplanets:oxygen_tank_med_full_cyan:*>,
	<extraplanets:oxygen_tank_med_full_light_gray:*>,
	<extraplanets:oxygen_tank_med_full_gray:*>,
	<extraplanets:oxygen_tank_med_full_pink:*>,
	<extraplanets:oxygen_tank_med_full_yellow:*>,
	<extraplanets:oxygen_tank_med_full_light_blue:*>,
	<extraplanets:oxygen_tank_med_full_magenta:*>,
	<extraplanets:oxygen_tank_med_full_lime:*>,
	<extraplanets:oxygen_tank_med_full_white:*>
] as IItemStack[];
var HArray = [
	<galacticraftcore:oxygen_tank_heavy_full:*>,
	<extraplanets:oxygen_tank_heavy_full_black:*>,
	<extraplanets:oxygen_tank_heavy_full_lime:*>,
	<extraplanets:oxygen_tank_heavy_full_green:*>,
	<extraplanets:oxygen_tank_heavy_full_brown:*>,
	<extraplanets:oxygen_tank_heavy_full_blue:*>,
	<extraplanets:oxygen_tank_heavy_full_purple:*>,
	<extraplanets:oxygen_tank_heavy_full_cyan:*>,
	<extraplanets:oxygen_tank_heavy_full_light_gray:*>,
	<extraplanets:oxygen_tank_heavy_full_gray:*>,
	<extraplanets:oxygen_tank_heavy_full_pink:*>,
	<extraplanets:oxygen_tank_heavy_full_yellow:*>,
	<extraplanets:oxygen_tank_heavy_full_light_blue:*>,
	<extraplanets:oxygen_tank_heavy_full_magenta:*>,
	<extraplanets:oxygen_tank_heavy_full_orange:*>,
	<extraplanets:oxygen_tank_heavy_full_white:*>
] as IItemStack[];  
var RArray = [
	<extraplanets:cloth>,
	<galacticraftcore:panel_lighting:4>,
	<galacticraftcore:panel_lighting:3>,
	<galacticraftcore:panel_lighting:2>,
	<galacticraftcore:panel_lighting:1>,
	<galacticraftcore:panel_lighting>,
] as IItemStack[];
var MBArray = [
	<extraplanets:decorative_blocks>,
	<extraplanets:decorative_blocks:1>,
	<extraplanets:decorative_blocks:6>,
	<extraplanets:decorative_blocks:7>
]as IItemStack[];

/* Remove Recipes for this script to work properly */
for item in RArray {
	recipes.remove(item);
}

/* Setup and fix some Ore Dictionaries */
for item in QArray {
    <ore:gemQuartz>.add(item);
}
for item in MBArray {
	<ore:stoneMarble>.add(item);
}
<ore:craftingTableWood>.addAll(<ore:workbench>);
<ore:workbench>.mirror(<ore:craftingTableWood>);
<ore:lever>.add(<minecraft:lever>);
<ore:lever>.add(<natura:nether_lever>);
for item in LArray{
	<ore:lOxyTank>.add(item);
}
for item in MArray{
	<ore:mOxyTank>.add(item);
}
for item in HArray{
	<ore:hOxyTank>.add(item);
}

/* Redefine colored wool Ore Dictionaries */
	/* White */
<ore:blockWoolWhite>.add(<chisel:wool_white>);
<ore:blockWoolWhite>.add(<chisel:wool_white:1>);
<ore:blockWoolWhite>.add(<quark:quilted_wool>);
	/* Orange */
<ore:blockWoolOrange>.add(<chisel:wool_orange>);
<ore:blockWoolOrange>.add(<chisel:wool_orange:1>);
<ore:blockWoolOrange>.add(<quark:quilted_wool:1>);
	/* Magenta */
<ore:blockWoolMagenta>.add(<chisel:wool_magenta>);
<ore:blockWoolMagenta>.add(<chisel:wool_magenta:1>);
<ore:blockWoolMagenta>.add(<quark:quilted_wool:2>);
	/* Light Blue */
<ore:blockWoolLightBlue>.add(<chisel:wool_lightblue>);
<ore:blockWoolLightBlue>.add(<chisel:wool_lightblue:1>);
<ore:blockWoolLightBlue>.add(<quark:quilted_wool:3>);
	/* Yellow */
<ore:blockWoolYellow>.add(<chisel:wool_yellow>);
<ore:blockWoolYellow>.add(<chisel:wool_yellow:1>);
<ore:blockWoolYellow>.add(<quark:quilted_wool:4>);
	/* Lime */
<ore:blockWoolLime>.add(<chisel:wool_lime>);
<ore:blockWoolLime>.add(<chisel:wool_lime:1>);
<ore:blockWoolLime>.add(<quark:quilted_wool:5>);
	/* Pink */
<ore:blockWoolPink>.add(<chisel:wool_pink>);
<ore:blockWoolPink>.add(<chisel:wool_pink:1>);
<ore:blockWoolPink>.add(<quark:quilted_wool:6>);
	/* Gray */
<ore:blockWoolGray>.add(<chisel:wool_gray>);
<ore:blockWoolGray>.add(<chisel:wool_gray:1>);
<ore:blockWoolGray>.add(<quark:quilted_wool:7>);
	/* Light Gray */
<ore:blockWoolLightGray>.add(<chisel:wool_lightgray>);
<ore:blockWoolLightGray>.add(<chisel:wool_lightgray:1>);
<ore:blockWoolLightGray>.add(<quark:quilted_wool:8>);
	/* Cyan */
<ore:blockWoolCyan>.add(<chisel:wool_cyan>);
<ore:blockWoolCyan>.add(<chisel:wool_cyan:1>);
<ore:blockWoolCyan>.add(<quark:quilted_wool:9>);
	/* Purple */
<ore:blockWoolPurple>.add(<chisel:wool_purple>);
<ore:blockWoolPurple>.add(<chisel:wool_purple:1>);
<ore:blockWoolPurple>.add(<quark:quilted_wool:10>);
	/* Blue */
<ore:blockWoolBlue>.add(<chisel:wool_blue>);
<ore:blockWoolBlue>.add(<chisel:wool_blue:1>);
<ore:blockWoolBlue>.add(<quark:quilted_wool:11>);
	/* Brown */
<ore:blockWoolBrown>.add(<chisel:wool_brown>);
<ore:blockWoolBrown>.add(<chisel:wool_brown:1>);
<ore:blockWoolBrown>.add(<quark:quilted_wool:12>);
	/* Green */
<ore:blockWoolGreen>.add(<chisel:wool_green>);
<ore:blockWoolGreen>.add(<chisel:wool_green:1>);
<ore:blockWoolGreen>.add(<quark:quilted_wool:13>);
	/* Red */
<ore:blockWoolRed>.add(<chisel:wool_red>);
<ore:blockWoolRed>.add(<chisel:wool_red:1>);
<ore:blockWoolRed>.add(<quark:quilted_wool:14>);
	/* Black */
<ore:blockWoolBlack>.add(<chisel:wool_black>);
<ore:blockWoolBlack>.add(<chisel:wool_black:1>);
<ore:blockWoolBlack>.add(<quark:quilted_wool:15>);
	/* Stone Fix */
<ore:stone>.addAll(<ore:stoneMarble>);
<ore:stone>.addAll(<ore:stoneLimestone>);
<ore:stone>.addAll(<ore:stoneAndesite>);
<ore:stone>.addAll(<ore:stoneDiorite>);
<ore:stone>.addAll(<ore:stoneGranite>);
	/* Seed Fix */
<ore:listAllseed>.add(<minecraft:wheat_seeds>);
<ore:listAllseed>.add(<immersiveengineering:seed>);
<ore:listAllseed>.add(<actuallyadditions:item_rice_seed>);
<ore:listAllseed>.add(<actuallyadditions:item_coffee_seed>);

/* Force new ore Dictionaries to be used in all recipes */
recipes.replaceAllOccurences(<minecraft:wool:0>, <ore:blockWoolWhite>);
recipes.replaceAllOccurences(<minecraft:wool:1>, <ore:blockWoolOrange>);
recipes.replaceAllOccurences(<minecraft:wool:2>, <ore:blockWoolMagenta>);
recipes.replaceAllOccurences(<minecraft:wool:3>, <ore:blockWoolLightBlue>);
recipes.replaceAllOccurences(<minecraft:wool:4>, <ore:blockWoolYellow>);
recipes.replaceAllOccurences(<minecraft:wool:5>, <ore:blockWoolLime>);
recipes.replaceAllOccurences(<minecraft:wool:6>, <ore:blockWoolPink>);
recipes.replaceAllOccurences(<minecraft:wool:7>, <ore:blockWoolGray>);
recipes.replaceAllOccurences(<minecraft:wool:8>, <ore:blockWoolLightGray>);
recipes.replaceAllOccurences(<minecraft:wool:9>, <ore:blockWoolCyan>);
recipes.replaceAllOccurences(<minecraft:wool:10>, <ore:blockWoolPurple>);
recipes.replaceAllOccurences(<minecraft:wool:11>, <ore:blockWoolBlue>);
recipes.replaceAllOccurences(<minecraft:wool:12>, <ore:blockWoolBrown>);
recipes.replaceAllOccurences(<minecraft:wool:13>, <ore:blockWoolGreen>);
recipes.replaceAllOccurences(<minecraft:wool:14>, <ore:blockWoolRed>);
recipes.replaceAllOccurences(<minecraft:wool:15>, <ore:blockWoolBlack>);
recipes.replaceAllOccurences(<minecraft:lever>, <ore:lever>);
recipes.replaceAllOccurences(<minecraft:glass>, <ore:blockGlass>);
recipes.replaceAllOccurences(<galacticraftcore:basic_item:6>, <ore:plateCopper>);
recipes.replaceAllOccurences(<galacticraftcore:basic_item:7>, <ore:plateTin>);
recipes.replaceAllOccurences(<galacticraftcore:basic_item:8>, <ore:plateAluminum>);
recipes.replaceAllOccurences(<galacticraftcore:basic_item:9>, <ore:plateSteel>);
recipes.replaceAllOccurences(<galacticraftcore:basic_item:10>, <ore:plateBronze>);
recipes.replaceAllOccurences(<galacticraftcore:basic_item:11>, <ore:plateIron>);
recipes.replaceAllOccurences(<extraplanets:tier4_items:4>, <ic2:crafting:15>);
recipes.replaceAllOccurences(<extraplanets:tier5_items:6>, <ore:plateNickel>);
recipes.replaceAllOccurences(<galacticraftcore:oxygen_tank_light_full>, <ore:lOxyTank>);
recipes.replaceAllOccurences(<galacticraftcore:oxygen_tank_med_full>, <ore:mOxyTank>);
recipes.replaceAllOccurences(<galacticraftcore:oxygen_tank_heavy_full>, <ore:hOxyTank>);
recipes.replaceAllOccurences(<minecraft:wheat_seeds>, <ore:listAllseed>);
/* Fix some recipes after unification */
var TArray = [
	<appliedenergistics2:nether_quartz_axe>,
	<appliedenergistics2:nether_quartz_hoe>,
	<appliedenergistics2:nether_quartz_spade>,
	<appliedenergistics2:nether_quartz_pickaxe>,
	<appliedenergistics2:nether_quartz_sword>,
	<appliedenergistics2:nether_quartz_wrench>,
	<appliedenergistics2:nether_quartz_cutting_knife>,
	<appliedenergistics2:material:44>,
	<mysticalagriculture:nether_quartz_seeds>,
	<actuallyadditions:item_mining_lens>,
	<natura:seed_bags>
]as IItemStack[];
for item in TArray{
	recipes.remove(item);
}
recipes.addShaped(<appliedenergistics2:nether_quartz_axe>, [
	[<minecraft:quartz>, <minecraft:quartz>], 
	[<minecraft:quartz>, <ore:stickWood>], 
	[null, <ore:stickWood>]
]);
recipes.addShaped(<appliedenergistics2:nether_quartz_hoe>, [
	[<minecraft:quartz>, <minecraft:quartz>], 
	[null, <ore:stickWood>], 
	[null, <ore:stickWood>]
]);
recipes.addShaped(<appliedenergistics2:nether_quartz_spade>, [
	[<minecraft:quartz>], 
	[<ore:stickWood>], 
	[<ore:stickWood>]
]);
recipes.addShaped(<appliedenergistics2:nether_quartz_pickaxe>, [
	[<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>], 
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]
]);
recipes.addShaped(<appliedenergistics2:nether_quartz_sword>, [
	[<minecraft:quartz>], 
	[<minecraft:quartz>], 
	[<ore:stickWood>]
]);
recipes.addShaped(<appliedenergistics2:nether_quartz_wrench>, [
	[<minecraft:quartz>, null, <minecraft:quartz>], 
	[null, <minecraft:quartz>, null], 
	[<minecraft:quartz>, null, <minecraft:quartz>]
]);
recipes.addShaped(<appliedenergistics2:nether_quartz_cutting_knife>, [
	[null, null, <ore:stickWood>], 
	[<minecraft:iron_ingot>, <ore:stickWood>, null], 
	[<minecraft:quartz>, <minecraft:quartz>, null]
]);
recipes.addShaped(<appliedenergistics2:material:44>, [
	[<ore:gemQuartz>, <ore:dustFluix>, <appliedenergistics2:material:22>]
]);
recipes.addShaped(<mysticalagriculture:nether_quartz_seeds>, [
	[<minecraft:quartz>, <mysticalagriculture:crafting:2>, <minecraft:quartz>], 
	[<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:2>], 
	[<minecraft:quartz>, <mysticalagriculture:crafting:2>, <minecraft:quartz>]
]);
recipes.addShaped(<actuallyadditions:item_mining_lens>, [
	[<minecraft:diamond>, <minecraft:gold_ingot>, <minecraft:iron_ingot>], 
	[<minecraft:coal>, <actuallyadditions:item_misc:18>, <actuallyadditions:item_misc:5>], 
	[<minecraft:quartz>, <minecraft:dye:4>, <minecraft:emerald>]
]);
recipes.addShapeless(<natura:seed_bags>, 
	[<minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, 
	<minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, 
	<minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>]
);

/* Remove UniDict's Plate and Gear Unification to prevent inteference */
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("gear");

/* Remove all usable plate recipes */
for item in PArray{
recipes.remove(item);
}

/* Unify all usable plate recipes */
	/* Iron Plate */
recipes.addShapeless(<thermalfoundation:material:32>, 
	[<ore:ingotIron>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:32>, 
	[<ore:ingotIron>, <ic2:forge_hammer:*>]
);
	/* Iron Sheetmetal > Iron Plate */
recipes.addShapeless(<thermalfoundation:material:32>, 
  [<immersiveengineering:sheetmetal:9>]
);
	/* Gold Plate */
recipes.addShapeless(<thermalfoundation:material:33>, 
	[<ore:ingotGold>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:33>, 
	[<ore:ingotGold>, <ic2:forge_hammer:*>]
);
	/* Gold Sheetmetal > Gold Plate */
recipes.addShapeless(<thermalfoundation:material:33>, 
  [<immersiveengineering:sheetmetal:10>]
);
	/* Copper Plate */
recipes.addShapeless(<thermalfoundation:material:320>, 
	[<ore:ingotCopper>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:320>, 
	[<ore:ingotCopper>, <ic2:forge_hammer:*>]
);
	/* Copper Sheetmetal > Copper Plate */
recipes.addShapeless(<thermalfoundation:material:320>,
  [<immersiveengineering:sheetmetal>]
);
	/* Tin Plate */
recipes.addShapeless(<thermalfoundation:material:321>, 
	[<ore:ingotTin>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:321>, 
	[<ore:ingotTin>, <ic2:forge_hammer:*>]
);
	/* Silver Plate */
recipes.addShapeless(<thermalfoundation:material:322>, 
	[<ore:ingotSilver>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:322>, 
	[<ore:ingotSilver>, <ic2:forge_hammer:*>]
);
	/* Silver Sheetmetal > Silver Plate */
recipes.addShapeless(<thermalfoundation:material:322>, 
  [<immersiveengineering:sheetmetal:3>]
);
	/* Lead Plate */
recipes.addShapeless(<thermalfoundation:material:323>, 
	[<ore:ingotLead>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:323>, 
	[<ore:ingotLead>, <ic2:forge_hammer:*>]
);
	/* Lead Sheetmetal > Lead Plate */
recipes.addShapeless(<thermalfoundation:material:323>, 
  [<immersiveengineering:sheetmetal:2>]
);
	/* Aluminum Plate */
recipes.addShapeless(<thermalfoundation:material:324>, 
	[<ore:ingotAluminum>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:324>, 
	[<ore:ingotAluminum>, <ic2:forge_hammer:*>]
);
	/* Aluminum Sheetmetal > Aluminum Plate */
recipes.addShapeless(<thermalfoundation:material:324>, 
  [<immersiveengineering:sheetmetal:1>]
);
	/* Nickel Plate */
recipes.addShapeless(<thermalfoundation:material:325>, 
	[<ore:ingotNickel>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:325>, 
	[<ore:ingotNickel>, <ic2:forge_hammer:*>]
);
	/* Nickel Sheetmetal > Nickel Plate */
recipes.addShapeless(<thermalfoundation:material:325>, 
  [<immersiveengineering:sheetmetal:4>]
);
	/* Steel Plate */
recipes.addShapeless(<thermalfoundation:material:352>, 
	[<ore:ingotSteel>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:352>, 
	[<ore:ingotSteel>, <ic2:forge_hammer:*>]
);
	/* Steel Sheetmetal > Steel Plate */
recipes.addShapeless(<thermalfoundation:material:352>, 
  [<immersiveengineering:sheetmetal:8>]
);
	/* Electrum Plate */
recipes.addShapeless(<thermalfoundation:material:353>, 
	[<ore:ingotElectrum>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:353>, 
	[<ore:ingotElectrum>, <ic2:forge_hammer:*>]
);
	/* Electrum Sheetmetal > Electrum Plate */
recipes.addShapeless(<thermalfoundation:material:353>, 
  [<immersiveengineering:sheetmetal:7>]
);
	/* Invar Plate */
recipes.addShapeless(<thermalfoundation:material:354>, 
	[<ore:ingotInvar>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:354>, 
	[<ore:ingotInvar>, <ic2:forge_hammer:*>]
);
	/* Bronze Plate */
recipes.addShapeless(<thermalfoundation:material:355>, 
	[<ore:ingotBronze>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:355>, 
	[<ore:ingotBronze>, <ic2:forge_hammer:*>]
);
	/* Constantan Plate */
recipes.addShapeless(<thermalfoundation:material:356>, 
	[<ore:ingotConstantan>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:356>, 
	[<ore:ingotConstantan>, <ic2:forge_hammer:*>]
);
	/* Constantan Sheetmetal > Constantan Plate */
recipes.addShapeless(<thermalfoundation:material:356>, 
  [<immersiveengineering:sheetmetal:6>]
);
	/* Signalum Plate */
recipes.addShapeless(<thermalfoundation:material:357>, 
	[<ore:ingotSignalum>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:357>, 
	[<ore:ingotSignalum>, <ic2:forge_hammer:*>]
);
	/* Lumium Plate */
recipes.addShapeless(<thermalfoundation:material:358>, 
	[<ore:ingotLumium>, <immersiveengineering:tool:*>]
);
recipes.addShapeless(<thermalfoundation:material:358>, 
	[<ore:ingotLumium>, <ic2:forge_hammer:*>]
);

/* Remove all usable gear recipes */
for item in GArray {
	recipes.remove(item);
}

/* Fixes having 5000 ways to make gears and unifies recipes*/
	/* Wood Gear*/
recipes.addShaped(<thermalfoundation:material:22>, [
	[null, <ore:stickWood>, null], 
	[<ore:stickWood>, null, <ore:stickWood>], 
	[null, <ore:stickWood>, null]
]);
recipes.addShaped(<thermalfoundation:material:22>, [
	[<ore:stickWood>, null, <ore:stickWood>],
	[null, null, null],
	[<ore:stickWood>, null, <ore:stickWood>]
]);
	/* Iron Gear */
recipes.addShaped(<thermalfoundation:material:24>, [
	[null, <ore:plateIron>, null], 
	[<ore:plateIron>, <ore:ingotIron>, <ore:plateIron>], 
	[null, <ore:plateIron>, null]
]);
recipes.addShaped(<thermalfoundation:material:24>, [
	[<ore:plateIron>, null, <ore:plateIron>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateIron>, null, <ore:plateIron>]
]);
	/* Gold Gear */
recipes.addShaped(<thermalfoundation:material:25>, [
	[null, <ore:plateGold>, null], 
	[<ore:plateGold>, <ore:ingotIron>, <ore:plateGold>], 
	[null, <ore:plateGold>, null]
]);
recipes.addShaped(<thermalfoundation:material:25>, [
	[<ore:plateGold>, null, <ore:plateGold>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateGold>, null, <ore:plateGold>]
]);
	/* Diamond Gear */
recipes.addShaped(<thermalfoundation:material:26>, [
	[null, <ore:gemDiamond>, null], 
	[<ore:gemDiamond>, <ore:ingotIron>, <ore:gemDiamond>], 
	[null, <ore:gemDiamond>, null]
]);
recipes.addShaped(<thermalfoundation:material:26>, [
	[<ore:gemDiamond>, null, <ore:gemDiamond>], 
	[null, <ore:ingotIron>, null], 
	[<ore:gemDiamond>, null, <ore:gemDiamond>]
]);
	/* Copper Gear */
recipes.addShaped(<thermalfoundation:material:256> * 1, [
  [null, <ore:plateCopper>],
  [<ore:plateCopper>, <ore:ingotIron>, <ore:plateCopper>],
  [null, <ore:plateCopper>]
]);
recipes.addShaped(<thermalfoundation:material:256>, [
	[<ore:plateCopper>, null, <ore:plateCopper>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateCopper>, null, <ore:plateCopper>]
]);
	/* Tin Gear */
recipes.addShaped(<thermalfoundation:material:257> * 1, [
  [null, <ore:plateTin>],
  [<ore:plateTin>, <ore:ingotIron>, <ore:plateTin>],
  [null, <ore:plateTin>]
]);
recipes.addShaped(<thermalfoundation:material:257>, [
	[<ore:plateTin>, null, <ore:plateTin>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateTin>, null, <ore:plateTin>]
]);
	/* Silver Gear */
recipes.addShaped(<thermalfoundation:material:258>, [
	[null, <ore:plateSilver>, null], 
	[<ore:plateSilver>, <ore:ingotIron>, <ore:plateSilver>], 
	[null, <ore:plateSilver>, null]
]);
recipes.addShaped(<thermalfoundation:material:258>, [
	[<ore:plateSilver>, null, <ore:plateSilver>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateSilver>, null, <ore:plateSilver>]
]);
	/* Lead Gear */
recipes.addShaped(<thermalfoundation:material:259>, [
	[null, <ore:plateLead>, null], 
	[<ore:plateLead>, <ore:ingotIron>, <ore:plateLead>], 
	[null, <ore:plateLead>, null]
]);
recipes.addShaped(<thermalfoundation:material:259>, [
	[<ore:plateLead>, null, <ore:plateLead>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateLead>, null, <ore:plateLead>]
]);
	/* Nickel Gear */
recipes.addShaped(<thermalfoundation:material:261>, [
	[null, <ore:plateNickel>, null], 
	[<ore:plateNickel>, <ore:ingotIron>, <ore:plateNickel>], 
	[null, <ore:plateNickel>, null]
]);
recipes.addShaped(<thermalfoundation:material:261>, [
	[<ore:plateNickel>, null, <ore:plateNickel>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateNickel>, null, <ore:plateNickel>]
]);
	/* Electrum Gear */
recipes.addShaped(<thermalfoundation:material:289>, [
	[null, <ore:plateElectrum>, null], 
	[<ore:plateElectrum>, <ore:ingotIron>, <ore:plateElectrum>], 
	[null, <ore:plateElectrum>, null]
]);
recipes.addShaped(<thermalfoundation:material:289>, [
	[<ore:plateElectrum>, null, <ore:plateElectrum>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateElectrum>, null, <ore:plateElectrum>]
]);
	/* Invar Gear */
recipes.addShaped(<thermalfoundation:material:290>, [
	[null, <ore:plateInvar>, null], 
	[<ore:plateInvar>, <ore:ingotIron>, <ore:plateInvar>], 
	[null, <ore:plateInvar>, null]
]);
recipes.addShaped(<thermalfoundation:material:290>, [
	[<ore:plateInvar>, null, <ore:plateInvar>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateInvar>, null, <ore:plateInvar>]
]);
	/*Bronze Gear */
recipes.addShaped(<thermalfoundation:material:291> * 1, [
  [null, <ore:plateBronze>],
  [<ore:plateBronze>, <ore:ingotIron>, <ore:plateBronze>],
  [null, <ore:plateBronze>]
]);
recipes.addShaped(<thermalfoundation:material:291>, [
	[<ore:plateBronze>, null, <ore:plateBronze>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateBronze>, null, <ore:plateBronze>]
]);
	/* Constantan Gear */
recipes.addShaped(<thermalfoundation:material:292>, [
	[null, <ore:plateConstantan>, null], 
	[<ore:plateConstantan>, <ore:ingotIron>, <ore:plateConstantan>], 
	[null, <ore:plateConstantan>, null]
]);
recipes.addShaped(<thermalfoundation:material:292>, [
	[<ore:plateConstantan>, null, <ore:plateConstantan>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateConstantan>, null, <ore:plateConstantan>]
]);
	/* Signalum Gear */
recipes.addShaped(<thermalfoundation:material:293>, [
	[null, <ore:plateSignalum>, null], 
	[<ore:plateSignalum>, <ore:ingotIron>, <ore:plateSignalum>], 
	[null, <ore:plateSignalum>, null]
]);
recipes.addShaped(<thermalfoundation:material:293>, [
	[null, <ore:plateSignalum>, null], 
	[<ore:plateSignalum>, <ore:ingotIron>, <ore:plateSignalum>], 
	[null, <ore:plateSignalum>, null]
]);
	/* Lumium Gear */
recipes.addShaped(<thermalfoundation:material:294>, [
	[null, <ore:plateLumium>, null], 
	[<ore:plateLumium>, <ore:ingotIron>, <ore:plateLumium>], 
	[null, <ore:plateLumium>, null]
]);
recipes.addShaped(<thermalfoundation:material:294>, [
	[<ore:plateLumium>, null, <ore:plateLumium>], 
	[null, <ore:ingotIron>, null], 
	[<ore:plateLumium>, null, <ore:plateLumium>]
]);

/* Fixes a recipe where Quartz ore + Petrotheum dust had two recipes */
recipes.removeByRecipeName("thermalfoundation:quartz");

/* AE2 Certus Quartz Ore/Charged Certus Quartz Ore smelting recipes */
furnace.addRecipe(<appliedenergistics2:material:0>, <appliedenergistics2:quartz_ore>, 1.0);
furnace.addRecipe(<appliedenergistics2:material:1>, <appliedenergistics2:charged_quartz_ore>, 1.0);

/* Permit grinding recipes for Charged Certus Quartz to Certus Quartz Dust */
mods.appliedenergistics2.Grinder.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 8);
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 4000);

/* Create a way to convert Galacticraft silicone to EIO Silicone due to block drops*/
recipes.addShapeless(<appliedenergistics2:material:5>, 
	[<galacticraftcore:basic_item:2>]
);

/* Carbon and IC2 Carbon plate mating */
Compactor.addPressRecipe(<ic2:crafting:15>, <extraplanets:tier4_items:5>, 4000);
recipes.addShapeless(<ic2:crafting:15>, 
	[<extraplanets:tier4_items:5>, <immersiveengineering:tool>]
);
recipes.addShapeless(<ic2:crafting:15>, 
	[<extraplanets:tier4_items:5>, <ic2:forge_hammer:*>]
);
MetalPress.addRecipe(<ic2:crafting:15>, <extraplanets:tier4_items:5>, <immersiveengineering:mold>, 2400);

/* Remove recipes from Compressor to be repaired */
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier4_items:4>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:6>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:7>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:8>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:9>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:10>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:basic_item:11>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftcore:heavy_plating> * 2);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:compressed_mercury>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier4_items:3>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier5_items:6>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier6_items:4>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier7_items:4>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier8_items:4>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier8_items:3>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier9_items:4>);
mods.GalacticraftTweaker.removeCompressorRecipe(<extraplanets:tier10_items:4>);
mods.GalacticraftTweaker.removeCompressorRecipe(<galacticraftplanets:item_basic_asteroids:6>);
mods.GalacticraftTweaker.removeCompressorRecipe(<moreplanets:compressed_illenium>);
mods.GalacticraftTweaker.removeCompressorRecipe(<moreplanets:compressed_setrorium>);
mods.GalacticraftTweaker.removeCompressorRecipe(<moreplanets:compressed_diremsium>);
mods.GalacticraftTweaker.removeCompressorRecipe(<moreplanets:compressed_zyptorium>);
mods.GalacticraftTweaker.removeCompressorRecipe(<moreplanets:compressed_extrailonite>);

/* Fix Galacticraft Compressor recipes expense and clean up unification */
	/* Carbon */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<ic2:crafting:15>, 
	<extraplanets:tier4_items:5>
);
	/* Copper */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:320>,
	<thermalfoundation:material:128>
);
	/* Tin */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:321>,
	<thermalfoundation:material:129>
);
	/* Aluminum */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:324>,
	<thermalfoundation:material:132>
);
	/* Steel */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:352>,
	<thermalfoundation:material:160>
);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:352>,
	<minecraft:coal>, <thermalfoundation:material:32>, <minecraft:coal>
);
	/* Bronze */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:355>,
	<thermalfoundation:material:163>
);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:355> * 4,
	<thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:320>, <thermalfoundation:material:321>
);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:355> * 4,
	<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:129>
);
	/* Iron */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:32>,
	<minecraft:iron_ingot>
);
	/* Heavy-Duty Plate */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftcore:heavy_plating> * 2,
	<thermalfoundation:material:352>, <thermalfoundation:material:324>, <thermalfoundation:material:355>, <thermalfoundation:material:352>, <thermalfoundation:material:324>, <thermalfoundation:material:355>
);
	/* Mercury */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:compressed_mercury>,
	<extraplanets:ingot_mercury>
);
	/* Heavy-Duty Plate Tier 4 */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier4_items:3>,
	<galacticraftplanets:item_basic_asteroids:5>, <ic2:crafting:15>, <extraplanets:compressed_mercury>, <extraplanets:compressed_mercury>, <extraplanets:compressed_mercury>, <extraplanets:compressed_mercury>
);
	/* Nickel */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:325>,
	<thermalfoundation:material:133>
);
	/* Magnesium */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier6_items:4>,
	<extraplanets:tier6_items:5>
);
	/* Crystal Ingot */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier7_items:4>,
	<extraplanets:tier7_items:5>
);
	/* Zinc */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier8_items:4>,
	<extraplanets:tier8_items:5>
);
	/* Heavy-Duty Plate Tier 8 */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier8_items:3>,
	<extraplanets:tier7_items:3>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>, <extraplanets:tier8_items:4>
);
	/* Tungsten */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier9_items:4>,
	<extraplanets:tier9_items:5>
);
	/* Dark Iron */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier10_items:4>,
	<extraplanets:tier10_items:5>
);
	/* Platinum */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<extraplanets:tier11_items:6>,
	<thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>, <thermalfoundation:material:134>
);
	/* Titanium */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftplanets:item_basic_asteroids:6>,
	<galacticraftplanets:item_basic_asteroids>
);
	/* Setrorium */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<moreplanets:compressed_setrorium>,
	<moreplanets:setrorium_shard>, <moreplanets:setrorium_shard>, <moreplanets:setrorium_shard>, <moreplanets:setrorium_shard>, <moreplanets:setrorium_shard>
);
	/* Illenium */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<moreplanets:compressed_illenium>,
	<moreplanets:illenium_ingot>
);
	/* Diremsium */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<moreplanets:compressed_diremsium>,
	<moreplanets:diremsium_ingot>
);
	/* Zyptorium */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<moreplanets:compressed_zyptorium>,
	<moreplanets:zyptorium_ingot>
);
	/* Extrailonite */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<moreplanets:compressed_extrailonite>,
	<moreplanets:extrailonite_ingot>
);
	/* Gold */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:33>,
	<minecraft:gold_ingot>
);
	/* Silver */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:322>,
	<thermalfoundation:material:130>
);
	/* Lead */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:323>,
	<thermalfoundation:material:131>
);
	/* Electrum */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:353>,
	<thermalfoundation:material:161>
);
	/* Invar */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:354>,
	<thermalfoundation:material:162>
);
	/* Constantan */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:356>,
	<thermalfoundation:material:164>
);
	/* Signalum */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:357>,
	<thermalfoundation:material:165>
);
	/* Lumium */
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:358>,
	<thermalfoundation:material:166>
);
	/* Enderium	*/
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<thermalfoundation:material:359>,
	<thermalfoundation:material:167>
);
/* Fix Galacticraft Recipes not Ore Dict */
recipes.addShaped(<extraplanets:cloth>, [
	[<ore:woolBlock>, <ore:woolBlock>], 
	[<ore:woolBlock>, <ore:woolBlock>]
]);
recipes.addShaped(<galacticraftcore:panel_lighting:4>, [
	[null, <ore:paneGlass>, null], 
	[<ore:paneGlass>, <galacticraftcore:glowstone_torch>, null], 
	[null, <ore:plateSteel>, null]
]);
recipes.addShaped(<galacticraftcore:panel_lighting:3>, [
	[<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>], 
	[null, <ore:plateSteel>, null]
]);
recipes.addShaped(<galacticraftcore:panel_lighting:2>, [
	[<ore:paneGlass>, null, <ore:paneGlass>], 
	[<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>], 
	[<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]
]);
recipes.addShaped(<galacticraftcore:panel_lighting:1>, [
	[<ore:paneGlass>, null, <ore:paneGlass>], 
	[null, <galacticraftcore:glowstone_torch>, null], 
	[<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]
]);
recipes.addShaped(<galacticraftcore:panel_lighting>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], 
	[<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>], 
	[<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]
]);

/* Rice dough makes bread instead */
furnace.remove(<actuallyadditions:item_food:17>);
furnace.addRecipe(<minecraft:bread>, <actuallyadditions:item_misc:9>, 15);