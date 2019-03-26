import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* Declare values and variables to make my life easier and clean up recipes */
val canolaB = <forge:bucketfilled>.withTag({FluidName: "refinedcanolaoil", Amount: 1000}) as IItemStack;
val diamondC = <ore:gemDiamond>;
val diamondG = <ore:gearDiamond>;
val glassV = <ore:blockGlass>;
val goldI = <minecraft:gold_ingot>;
val ironI = <minecraft:iron_ingot>;
val stoneB = <ore:stone>;
val restS = <actuallyadditions:item_crystal_shard>;
val restC = <actuallyadditions:item_crystal>;
val empRestC = <actuallyadditions:item_crystal_empowered>;
val empRestB = <actuallyadditions:block_crystal_empowered>;
val palisC = <actuallyadditions:item_crystal:1>;
val empPalC = <actuallyadditions:item_crystal_empowered:1>;
val empEnoriB = <actuallyadditions:block_crystal_empowered:5>;
val perlBlock = <actuallyadditions:block_misc:6>;
val voidC = <actuallyadditions:item_crystal:3>;
val avaritiaDCCT = <avaritia:double_compressed_crafting_table>;
val treatedWood = <immersiveengineering:treated_wood>;
val treatedStick = <immersiveengineering:material>;
var RArray = [ 
	<avaritia:extreme_crafting_table>,
	<rangedpumps:pump>,
	<solarflux:solar_panel_1>,
	<rftoolsdim:phased_field_generator>,
	<rftoolsdim:dimension_monitor>,
	<rftools:charged_porter>,
	<rftools:advanced_charged_porter>,
	<rftools:shield_template_block>,
	<rftools:machine_frame>,
	<rftools:machine_base>,
	<buildcrafttransport:pipe_wood_item>,
	<buildcrafttransport:pipe_cobble_item>,
	<buildcrafttransport:pipe_stone_item>,
	<buildcrafttransport:pipe_quartz_item>,
	<buildcrafttransport:pipe_iron_item>,
	<buildcrafttransport:pipe_gold_item>,
	<buildcrafttransport:pipe_clay_item>,
	<buildcrafttransport:pipe_sandstone_item>,
	<buildcrafttransport:pipe_void_item>,
	<buildcrafttransport:pipe_obsidian_item>,
	<buildcrafttransport:pipe_diamond_item>,
	<buildcrafttransport:pipe_diamond_wood_item>,
	<buildcrafttransport:pipe_lapis_item>,
	<buildcrafttransport:pipe_daizuli_item>,
	<buildcrafttransport:pipe_stripes_item>,
	<buildcrafttransport:pipe_structure>,
	<additionalpipes:pipe_items_switch>,
	<additionalpipes:pipe_items_gravity_feed>,
	<additionalpipes:pipe_items_distribution>,
	<additionalpipes:pipe_items_adv_wood>,
	<buildcraftcore:marker_volume>,
	<buildcraftcore:marker_path>,
	<buildcraftcore:engine>,
	<buildcraftcore:engine:1>,
	<buildcraftcore:engine:2>,
	<buildcraftbuilders:architect>,
	<buildcraftbuilders:quarry>,
	<buildcraftfactory:autoworkbench_item>,
	<buildcraftfactory:mining_well>,
	<buildcraftfactory:pump>,
	<buildcraftfactory:flood_gate>,
	<buildcraftfactory:chute>,
	<buildcraftfactory:distiller>,
	<buildcraftfactory:heat_exchange>,
	<buildcraftsilicon:laser>,
	<buildcraftsilicon:assembly_table>,
	<buildcraftsilicon:advanced_crafting_table>,
	<buildcraftsilicon:integration_table>,
	<buildcrafttransport:filtered_buffer>
] as IItemStack[];

/* removes recipes being replaced for tier 2*/
for item in RArray {
    recipes.remove(item);
}

/* Replaces recipes that were removed */
	/* Avarita */
recipes.addShaped(<avaritia:extreme_crafting_table>, [
	[empEnoriB, <ore:ingotCrystalMatrix>, empEnoriB], 
	[<ore:ingotCrystalMatrix>, avaritiaDCCT, <ore:ingotCrystalMatrix>], 
	[empEnoriB, <ore:ingotCrystalMatrix>, empEnoriB]
]);
	/* Ranged Pump */
recipes.addShaped(<rangedpumps:pump>, [
	[<ore:obsidian>, <actuallyadditions:item_paxel_crystal_white>, <ore:obsidian>], 
	[<ore:waterBucket>, perlBlock, <ore:lavaBucket>], 
	[<ore:obsidian>, <actuallyadditions:item_paxel_crystal_white>, <ore:obsidian>]
]);
	/* Solar Panel */
recipes.addShaped(<solarflux:solar_panel_1>, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>], 
	[treatedWood, restC, treatedWood], 
	[treatedWood, treatedWood, treatedWood]
]);
	/* RF Tools */
recipes.addShaped(<rftoolsdim:phased_field_generator>, [
	[empRestC, <rftools:dimensional_shard>, empRestC], 
	[<rftools:dimensional_shard>, <minecraft:ender_eye>, <rftools:dimensional_shard>], 
	[empRestC, <rftools:dimensional_shard>, empRestC]
]);
recipes.addShaped(<rftoolsdim:dimension_monitor>, [
	[null, <rftools:dimensional_shard>, null], 
	[empRestC, <minecraft:comparator>, empRestC], 
	[null, empRestC, null]
]);
recipes.addShaped(<rftools:charged_porter>, [
	[null, <minecraft:ender_pearl>, null], 
	[<minecraft:ender_pearl>, empRestB, <minecraft:ender_pearl>], 
	[ironI, <minecraft:ender_pearl>, ironI]
]);
recipes.addShaped(<rftools:advanced_charged_porter>, [
	[empRestB, diamondC, empRestB], 
	[diamondC, <rftools:charged_porter>, diamondC], 
	[empRestB, diamondC, empRestB]
]);
recipes.addShaped(<rftools:shield_template_block>, [
	[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>], 
	[empPalC, glassV, empPalC], 
	[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]
]);
recipes.addShaped(<rftools:machine_frame>, [
	[ironI, palisC, ironI], 
	[<minecraft:gold_nugget>, null, <minecraft:gold_nugget>], 
	[ironI, palisC, ironI]
]);
recipes.addShaped(<rftools:machine_frame>, [
	[ironI, <minecraft:gold_nugget>, ironI], 
	[palisC, null, palisC], 
	[ironI, <minecraft:gold_nugget>, ironI]
]);
recipes.addShaped(<rftools:machine_base>, [
	[<ore:nuggetGold>, palisC, <ore:nuggetGold>], 
	[stoneB, stoneB, stoneB]
]);
	/* Buildcraft Transport */
recipes.addShaped(<buildcrafttransport:pipe_wood_item> * 8, [
	[null, canolaB, null], 
	[treatedWood, glassV, treatedWood], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_wood_item> * 8, [
	[null, treatedWood, null], 
	[canolaB, glassV, canolaB], 
	[null, treatedWood, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_cobble_item> * 8, [
	[null, canolaB, null], 
	[<ore:cobblestone>, glassV, <ore:cobblestone>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_cobble_item> * 8, [
	[null, <ore:cobblestone>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:cobblestone>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_stone_item> * 8, [
	[null, canolaB, null], 
	[stoneB, glassV, stoneB], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_stone_item> * 8, [
	[null, stoneB, null], 
	[canolaB, glassV, canolaB], 
	[null, stoneB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_quartz_item> * 8, [
	[null, canolaB, null], 
	[<ore:gemQuartz>, glassV, <ore:gemQuartz>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_quartz_item> * 8, [
	[null, <ore:gemQuartz>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:gemQuartz>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_iron_item> * 8, [
	[null, canolaB, null], 
	[ironI, glassV, ironI], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_iron_item> * 8, [
	[null, ironI, null], 
	[canolaB, glassV, canolaB], 
	[null, ironI, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_gold_item> * 8, [
	[null, canolaB, null], 
	[goldI, glassV, goldI], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_gold_item> * 8, [
	[null, goldI, null], 
	[canolaB, glassV, canolaB], 
	[null, goldI, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_clay_item> * 8, [
	[null, canolaB, null], 
	[<ore:blockClay>, glassV, <ore:blockClay>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_clay_item> * 8, [
	[null, <ore:blockClay>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:blockClay>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_sandstone_item> * 8, [
	[null, canolaB, null], 
	[<ore:sandstone>, glassV, <ore:sandstone>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_sandstone_item> * 8, [
	[null, <ore:sandstone>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:sandstone>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_void_item> * 8, [
	[null, canolaB, null], 
	[<ore:dyeBlack>, glassV, <minecraft:redstone>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_void_item> * 8, [
	[null, <minecraft:redstone>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:dyeBlack>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_obsidian_item> * 8, [
	[null, canolaB, null], 
	[<ore:obsidian>, glassV, <ore:obsidian>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_obsidian_item> * 8, [
	[null, <ore:obsidian>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:obsidian>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_diamond_item> * 8, [
	[null, canolaB, null], 
	[diamondC, glassV, diamondC], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_diamond_item> * 8, [
	[null, diamondC, null], 
	[canolaB, glassV, canolaB], 
	[null, diamondC, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_diamond_wood_item> * 8, [
	[null, canolaB, null], 
	[treatedWood, glassV, diamondC], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_diamond_wood_item> * 8, [
	[null, diamondC, null], 
	[canolaB, glassV, canolaB], 
	[null, treatedWood, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_lapis_item> * 8, [
	[null, canolaB, null], 
	[<ore:blockLapis>, glassV, <ore:blockLapis>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_lapis_item> * 8, [
	[null, <ore:blockLapis>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:blockLapis>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_daizuli_item> * 8, [
	[null, canolaB, null], 
	[<ore:blockLapis>, glassV, diamondC], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_daizuli_item> * 8, [
	[null, diamondC, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:blockLapis>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_stripes_item> * 8, [
	[null, canolaB, null], 
	[<ore:gearGold>, glassV, <ore:gearGold>], 
	[null, canolaB, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_stripes_item> * 8, [
	[null, <ore:gearGold>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:gearGold>, null]
]);
recipes.addShaped(<buildcrafttransport:pipe_structure> * 8, [
	[<buildcrafttransport:pipe_cobble_item>, <buildcrafttransport:pipe_cobble_item>, <buildcrafttransport:pipe_cobble_item>],
	[<buildcrafttransport:pipe_cobble_item>, <minecraft:gravel>, <buildcrafttransport:pipe_cobble_item>], 
	[<buildcrafttransport:pipe_cobble_item>, <buildcrafttransport:pipe_cobble_item>, <buildcrafttransport:pipe_cobble_item>]
]);
recipes.addShaped(<additionalpipes:pipe_items_switch>, [
	[null, canolaB, null], 
	[<ore:gearGold>, glassV, <ore:gearIron>], 
	[null, canolaB, null]
]);
recipes.addShaped(<additionalpipes:pipe_items_switch>, [
	[null, <ore:gearIron>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:gearGold>, null]
]);
recipes.addShaped(<additionalpipes:pipe_items_teleport>, [
	[null, canolaB, null], 
	[<actuallyadditions:block_misc:6>, glassV, <actuallyadditions:block_misc:6>], 
	[null, canolaB, null]
]);
recipes.addShaped(<additionalpipes:pipe_items_teleport>, [
	[null, <actuallyadditions:block_misc:6>, null], 
	[canolaB, glassV, canolaB], 
	[null, <actuallyadditions:block_misc:6>, null]
]);
recipes.addShaped(<additionalpipes:pipe_items_gravity_feed>, [
	[stoneB, canolaB, stoneB], 
	[ironI, glassV, ironI], 
	[stoneB, canolaB, stoneB]
]);
recipes.addShaped(<additionalpipes:pipe_items_gravity_feed>, [
	[stoneB, ironI, stoneB], 
	[canolaB, glassV, canolaB], 
	[stoneB, ironI, stoneB]
]);
recipes.addShaped(<additionalpipes:pipe_items_adv_wood>, [
	[null, canolaB, null], 
	[<ore:gearWood>, glassV, <ore:gearWood>], 
	[null, canolaB, null]
]);
recipes.addShaped(<additionalpipes:pipe_items_adv_wood>, [
	[null, <ore:gearWood>, null], 
	[canolaB, glassV, canolaB], 
	[null, <ore:gearWood>, null]
]);
recipes.addShaped(<additionalpipes:pipe_items_distribution>, [
	[<minecraft:redstone>, canolaB, <minecraft:redstone>], 
	[ironI, glassV, ironI], 
	[<minecraft:redstone>, canolaB, <minecraft:redstone>]
]);
recipes.addShaped(<additionalpipes:pipe_items_distribution>, [
	[<minecraft:redstone>, ironI, <minecraft:redstone>], 
	[canolaB, glassV, canolaB], 
	[<minecraft:redstone>, ironI, <minecraft:redstone>]
]);
recipes.addShaped(<buildcraftcore:marker_volume>, [
	[null, palisC, null], 
	[restS, treatedStick, restS]
]);
recipes.addShaped(<buildcraftcore:marker_path>, [
	[null, <actuallyadditions:item_crystal:4>, null], 
	[restS, treatedStick, restS]
]);
recipes.addShaped(<buildcraftcore:engine>, [
	[treatedWood, treatedWood, treatedWood], 
	[restS, treatedStick, restS], 
	[<ore:gearWood>, <minecraft:piston>, <ore:gearWood>]
]);
recipes.addShaped(<buildcraftcore:engine:1>, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
	[restS, glassV, restS], 
	[<ore:gearStone>, <minecraft:piston>, <ore:gearStone>]
]);
recipes.addShaped(<buildcraftcore:engine:2>, [
	[ironI, ironI, ironI], 
	[restS, glassV, restS], 
	[<ore:gearIron>, <minecraft:piston>, <ore:gearIron>]
]);
recipes.addShaped(<buildcraftbuilders:architect>, [
	[voidC, <buildcraftcore:marker_volume>, voidC], 
	[<ore:dyeYellow>, <ore:workbench>, <ore:dyeYellow>], 
	[diamondG, <buildcraftbuilders:snapshot:2>, diamondG]
]);
recipes.addShaped(<buildcraftbuilders:quarry>, [
	[<ore:gearGold>, <actuallyadditions:item_crystal_empowered:3>, <ore:gearGold>], 
	[empRestC, <ore:gearIron>, empRestC], 
	[diamondG, <actuallyadditions:item_pickaxe_crystal_light_blue>, diamondG]
]);
recipes.addShaped(<buildcraftfactory:autoworkbench_item>, [
	[<ore:gearStone>, <ore:workbench>, <ore:gearStone>], 
	[treatedWood, restC, treatedWood]
]);
recipes.addShaped(<buildcraftfactory:mining_well>, [
	[ironI, restC, ironI], 
	[ironI, <ore:gearIron>, ironI], 
	[ironI, <actuallyadditions:item_pickaxe_crystal_white>, ironI]
]);
recipes.addShaped(<buildcraftfactory:pump>, [
	[ironI, restC, ironI], 
	[ironI, <ore:gearIron>, ironI], 
	[voidC, <minecraft:bucket>, voidC]
]);
recipes.addShaped(<buildcraftfactory:flood_gate>, [
	[ironI, <ore:gearIron>, ironI], 
	[<minecraft:iron_bars>, voidC, <minecraft:iron_bars>], 
	[ironI, <minecraft:iron_bars>, ironI]
]);
recipes.addShaped(<buildcraftfactory:distiller>, [
	[<actuallyadditions:item_misc:8>, <buildcraftfactory:tank>, <actuallyadditions:item_misc:8>], 
	[<buildcraftfactory:tank>, <actuallyadditions:block_canola_press>, <buildcraftfactory:tank>]
]);
recipes.addShaped(<buildcraftfactory:heat_exchange>, [
	[<actuallyadditions:item_crystal:5>, <ore:gearIron>, <actuallyadditions:item_crystal_empowered:5>], 
	[glassV, glassV, glassV], 
	[<actuallyadditions:item_crystal_empowered:5>, <ore:gearIron>, <actuallyadditions:item_crystal:5>]
]);
recipes.addShaped(<buildcraftrobotics:zone_planner>, [
	[<actuallyadditions:item_crystal_empowered:5>, restC, <actuallyadditions:item_crystal_empowered:5>], 
	[<ore:plateIron>, <actuallyadditions:item_color_lens>, <ore:plateIron>], 
	[<actuallyadditions:item_crystal_empowered:5>, <ore:plateIron>, <actuallyadditions:item_crystal_empowered:5>]
]);
recipes.addShaped(<buildcraftsilicon:laser>, [
	[<minecraft:redstone>, <minecraft:redstone>, <ore:obsidian>], 
	[<minecraft:redstone>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>], 
	[<minecraft:redstone>, <minecraft:redstone>, <ore:obsidian>]
]);
recipes.addShaped(<buildcraftsilicon:assembly_table>, [
	[<ore:obsidian>, empRestB, <ore:obsidian>], 
	[<ore:obsidian>, <ore:workbench>, <ore:obsidian>], 
	[<ore:obsidian>, diamondG, <ore:obsidian>]
]);
recipes.addShaped(<buildcraftsilicon:advanced_crafting_table>, [
	[<ore:obsidian>, <ore:workbench>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:chest>, <ore:obsidian>], 
	[<ore:obsidian>, <buildcraftsilicon:redstone_chipset:4>, <ore:obsidian>]
]);
recipes.addShaped(<buildcraftsilicon:integration_table>, [
	[<buildcraftsilicon:redstone_chipset:2>, goldI, <buildcraftsilicon:redstone_chipset:2>], 
	[<ore:obsidian>, <buildcraftsilicon:redstone_chipset:4>, <ore:obsidian>], 
	[<ore:obsidian>, diamondG, <ore:obsidian>]
]);
recipes.addShaped(<buildcrafttransport:filtered_buffer>, [
	[treatedWood, <buildcrafttransport:pipe_diamond_item>, treatedWood], 
	[treatedWood, <ore:chest>, treatedWood], 
	[treatedWood, <ore:craftingPiston>, treatedWood]
]);