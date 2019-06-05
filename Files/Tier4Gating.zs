import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.avaritia.ExtremeCrafting;
import mods.astralsorcery.Altar;

/* Declare values and variable to make my life easier */
var RArray = [
	<thermalfoundation:material:513>,
	<thermalfoundation:material:514>,
	<thermalfoundation:material:515>,
	<enderio:item_item_conduit>,
	<enderio:item_liquid_conduit>,
	<enderio:item_liquid_conduit:1>,
	<enderio:item_liquid_conduit:2>,
	<enderio:item_power_conduit>,
	<enderio:item_power_conduit:1>,
	<enderio:item_power_conduit:2>,
	<enderio:item_redstone_conduit>,
	<sgcraft:sgcorecrystal>,
	<sgcraft:sgcontrollercrystal>,
	<rftoolsdim:empty_dimension_tab>,
	<thermalexpansion:frame:0>,
	<enderio:item_material:0>,
	<bigreactors:reactorcasingcores>,
	<sgcraft:stargatebase>,
	<sgcraft:stargatecontroller>,
	<tconstruct:tooltables:3>
]as IItemStack[];

/* Remove Recipes that will be changed */
for item in RArray{
	recipes.remove(item);
}

/* Add Regular recipes to assist in gating. */
recipes.addShaped(<thermalfoundation:material:515> * 2, [
	[null, <thermalfoundation:material:161>, <buildcraftsilicon:redstone_chipset>], 
	[null, <ic2:crafting:1>, null], 
	[<buildcraftsilicon:redstone_chipset>, <thermalfoundation:material:161>, null]
]);
recipes.addShaped(<thermalfoundation:material:514> * 2, [
	[null, <thermalfoundation:material:130>, <buildcraftsilicon:redstone_chipset>], 
	[null, <ic2:crafting:1>, null], 
	[<buildcraftsilicon:redstone_chipset>, <thermalfoundation:material:130>, null]
]);
recipes.addShaped(<thermalfoundation:material:513> * 2, [
	[null, <minecraft:gold_ingot>, <buildcraftsilicon:redstone_chipset>], 
	[null, <ic2:crafting:1>, null], 
	[<buildcraftsilicon:redstone_chipset>, <minecraft:gold_ingot>, null]
]);
recipes.addShaped(<sgcraft:sgcorecrystal>, [
	[<minecraft:dye:4>, <enderio:item_material:28>, <minecraft:dye:4>], 
	[<minecraft:dye:4>, <astralsorcery:blockcelestialcollectorcrystal:*>, <minecraft:dye:4>], 
	[<minecraft:dye:4>, <ore:dustBlizz>, <minecraft:dye:4>]
]);
recipes.addShaped(<sgcraft:sgcontrollercrystal>, [
	[<minecraft:redstone>, <enderio:item_material:28>, <minecraft:redstone>], 
	[<minecraft:glowstone_dust>, <astralsorcery:blockcelestialcollectorcrystal:*>, <minecraft:glowstone_dust>], 
	[<minecraft:redstone>, <minecraft:blaze_powder>, <minecraft:redstone>]
]);
recipes.addShaped(<rftoolsdim:empty_dimension_tab>, [
	[<buildcraftsilicon:redstone_chipset:4>, <ore:paper>, <buildcraftsilicon:redstone_chipset:4>], 
	[<ore:paper>, <ic2:crafting:2>, <ore:paper>], 
	[<buildcraftsilicon:redstone_chipset:4>, <ore:paper>, <buildcraftsilicon:redstone_chipset:4>]
]);
recipes.addShaped (<enderio:item_item_conduit> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<enderio:item_alloy_nugget:5>, <ic2:crafting:1>, <enderio:item_alloy_nugget:5>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);
recipes.addShaped (<enderio:item_liquid_conduit> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<ore:blockGlass>, <ic2:crafting:1>, <ore:blockGlass>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);
recipes.addShaped (<enderio:item_liquid_conduit:1> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<ore:blockGlassHardened>, <ic2:crafting:1>, <ore:blockGlassHardened>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);
recipes.addShaped (<enderio:item_liquid_conduit:2> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<enderio:item_alloy_nugget:2>, <ic2:crafting:1>, <enderio:item_alloy_nugget:2>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);
recipes.addShaped (<enderio:item_power_conduit> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<enderio:item_alloy_ingot:4>, <ic2:crafting:1>, <enderio:item_alloy_ingot:4>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);
recipes.addShaped (<enderio:item_power_conduit:1> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<enderio:item_alloy_ingot:1>, <ic2:crafting:1>, <enderio:item_alloy_ingot:1>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);
recipes.addShaped (<enderio:item_power_conduit:2> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<enderio:item_alloy_ingot:2>, <ic2:crafting:1>, <enderio:item_alloy_ingot:2>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);
recipes.addShaped (<enderio:item_redstone_conduit> * 8, [
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
	[<enderio:item_alloy_ingot:3>, <ic2:crafting:1>, <enderio:item_alloy_ingot:3>],
	[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
]);

/* Add avaritia recipes to make gate the bigger mods */
ExtremeCrafting.addShaped("Simple Machine Chassis", <enderio:item_material:0> * 4, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[null, null, <minecraft:iron_bars>, <minecraft:iron_ingot>, <minecraft:iron_bars>, <minecraft:iron_ingot>, <minecraft:iron_bars>, null, null],
	[null, null, <minecraft:iron_ingot>, <ic2:crafting:1>, <wizardry:devil_dust>, <ic2:crafting:1>, <minecraft:iron_ingot>, null, null],
	[null, null, <minecraft:iron_bars>, <astralsorcery:itemcraftingcomponent:1>, <enderio:item_material:20>, <astralsorcery:itemcraftingcomponent:1>, <minecraft:iron_bars>, null, null],
	[null, null, <minecraft:iron_ingot>, <ic2:crafting:1>, <wizardry:devil_dust>, <ic2:crafting:1>, <minecraft:iron_ingot>, null, null],
	[null, null, <minecraft:iron_bars>, <minecraft:iron_ingot>, <minecraft:iron_bars>, <minecraft:iron_ingot>, <minecraft:iron_bars>, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]]
);
ExtremeCrafting.addShaped("Machine Frame", <thermalexpansion:frame:0> * 4, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[null, null, <minecraft:glass>, <minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>, <minecraft:glass>, null, null],
	[null, null, <minecraft:iron_ingot>, <ic2:crafting:1>, <wizardry:devil_dust>, <ic2:crafting:1>, <minecraft:iron_ingot>, null, null],
	[null, null, <minecraft:glass>, <astralsorcery:itemcraftingcomponent:1>, <thermalfoundation:material:257>, <astralsorcery:itemcraftingcomponent:1>, <minecraft:glass>, null, null],
	[null, null, <minecraft:iron_ingot>, <ic2:crafting:1>, <wizardry:devil_dust>, <ic2:crafting:1>, <minecraft:iron_ingot>, null, null],
	[null, null, <minecraft:glass>, <minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>, <minecraft:glass>, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]]
);
ExtremeCrafting.addShaped("Reactor Casing Core", <bigreactors:reactorcasingcores> * 2, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[null, null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <bigreactors:ingotgraphite>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null, null],
	[null, null, <minecraft:iron_ingot>, <minecraft:gold_ingot>, null, <minecraft:gold_ingot>, <minecraft:iron_ingot>, null, null],
	[null, null, <bigreactors:ingotgraphite>, null, <ic2:crafting:1>, null, <bigreactors:ingotgraphite>, null, null],
	[null, null, <minecraft:iron_ingot>, <minecraft:gold_ingot>, null, <minecraft:gold_ingot>, <minecraft:iron_ingot>, null, null],
	[null, null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <bigreactors:ingotgraphite>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);
ExtremeCrafting.addShaped("Stargate Base", <sgcraft:stargatebase> * 1, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[null, null, <minecraft:sandstone:1>, <ic2:crafting:1>, <minecraft:sandstone:1>, <ic2:crafting:1>, <minecraft:sandstone:1>, null, null],
	[null, null, <sgcraft:naquadahingot>, <astralsorcery:itemshiftingstar>, <minecraft:ender_eye>, <astralsorcery:itemshiftingstar>, <sgcraft:naquadahingot>, null, null],
	[null, null, <minecraft:sandstone:1>, <minecraft:ender_eye>, <sgcraft:sgcorecrystal>, <minecraft:ender_eye>, <minecraft:sandstone:1>, null, null],
	[null, null, <sgcraft:naquadahingot>, <astralsorcery:itemshiftingstar>, <minecraft:ender_eye>, <astralsorcery:itemshiftingstar>, <sgcraft:naquadahingot>, null, null],
	[null, null, <minecraft:sandstone:1>, <ic2:crafting:1>, <minecraft:sandstone:1>, <ic2:crafting:1>, <minecraft:sandstone:1>, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);
ExtremeCrafting.addShaped("Stargate Controller", <sgcraft:stargatecontroller> * 1, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[null, null, <minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>, null, null],
	[null, null, <minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>, null, null],
	[null, null, <minecraft:obsidian>, <ic2:crafting:2>, <minecraft:ender_pearl>, <ic2:crafting:2>, <minecraft:obsidian>, null, null],
	[null, null, <minecraft:obsidian>, <ic2:crafting:5>, <sgcraft:sgcontrollercrystal>, <ic2:crafting:5>, <minecraft:obsidian>, null, null],
	[null, null, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);

/* Add in difficult recipe for Tinkers tools to encourage use of other mod items. */
Altar.addConstellationAltarRecipe("THBNewage:shaped/internal/altar/tinkergating", <tconstruct:tooltables:3>, 1500, 20, 
	[<astralsorcery:itemcraftingcomponent:1>, <wizardry:nacre_pearl:*>, <astralsorcery:itemcraftingcomponent:1>,
	<wizardry:devil_dust>, <tconstruct:tooltables>, <wizardry:devil_dust>,
	<astralsorcery:itemcraftingcomponent:1>, <wizardry:unicorn_horn>, <astralsorcery:itemcraftingcomponent:1>,
	<liquid:astralsorcery.liquidstarlight>, <tconstruct:pattern>, <tconstruct:pattern>, <liquid:astralsorcery.liquidstarlight>,
	null, null,
	null, null,
	null, null,
	null, null]);