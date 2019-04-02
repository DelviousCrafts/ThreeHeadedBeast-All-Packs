import crafttweaker.item.IItemStack;
import mods.avaritia.ExtremeCrafting;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.chisel.Carving;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Pulverizer;
import mods.astralsorcery.Grindstone;
import mods.astralsorcery.Altar;
import mods.bloodmagic.AlchemyTable;
import mods.appliedenergistics2.Grinder;


/* Disable duplicate Bronze armour (Favouring Thermal Foundation) */
recipes.remove(<ic2:bronze_helmet>);
recipes.remove(<ic2:bronze_chestplate>);
recipes.remove(<ic2:bronze_leggings>);
recipes.remove(<ic2:bronze_boots>);
recipes.remove(<ic2:bronze_axe>);
recipes.remove(<ic2:bronze_hoe>);
recipes.remove(<ic2:bronze_pickaxe>);
recipes.remove(<ic2:bronze_shovel>);
recipes.remove(<ic2:bronze_sword>);

/* Fix broken bread recipe*/
recipes.addShaped(<minecraft:bread> * 1, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);

/* Remove uranium casting to prevent cross-mod breakage */
Casting.removeBasinRecipe(<ic2:resource:10>, <liquid:uranium>);

/* Adds liquid magma block as a fuel for furnace. Seriously why isn't this a thing? */
furnace.setFuel(<minecraft:magma>, 1000);

/* Fix bug where casting cobalt blocks gives chisel block rather than tinkers' construct one */
Casting.removeBasinRecipe(<chisel:blockcobalt>, <liquid:cobalt>);
Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

/* Fixed a duplication bug with Thermal Expansion and Ender IO */
RedstoneFurnace.removeRecipe(<thermalfoundation:material:768>);

/* Remove Vanilla Prismarine from Chisel Groups due to duplication issues*/
Carving.removeVariation("prismarine", <minecraft:prismarine:0>);
Carving.removeVariation("prismarine", <minecraft:prismarine:1>);
Carving.removeVariation("prismarine", <minecraft:prismarine:2>);

/* Fix cheap diamond recipe caused by mod cross compatibility */
Compactor.removePressRecipe(<ic2:crafting:17>);

/* Clean up paper recipe */
recipes.removeShaped(<minecraft:paper>, [
	[<minecraft:reeds>, <minecraft:reeds>], [<minecraft:reeds>, null]
]);
recipes.removeShaped(<minecraft:paper>, [
	[<moreplanets:infected_sugar_cane>, <moreplanets:infected_sugar_cane>, <moreplanets:infected_sugar_cane>]
]);
recipes.removeShaped(<minecraft:paper>, [
	[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]
]);
recipes.addShapeless(<minecraft:paper>, 
	[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]
);

/* Fix Confusion with Daylight Sensor recipe */
recipes.remove(<minecraft:daylight_detector>);
recipes.addShaped(<minecraft:daylight_detector>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>],
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);

/* Removed simple Cyclic Flying ring because did you really think it was gonna be that easy? */
recipes.removeShaped(<flyringbaublemod:flyingring>, [
	[<flyringbaublemod:birdcage:1>, <ore:ingotGold>, <flyringbaublemod:birdcage:1>], 
	[<ore:ingotGold>, <ore:itemBlazeRod>, <ore:ingotGold>], 
	[null, <ore:ingotGold>, null]
]);

/* Addresses some inconsistency with Actually Additions' Black Quartz */
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 1, <actuallyadditions:item_misc:5>);
mods.immersiveengineering.Crusher.removeRecipe(<actuallyadditions:item_misc:5>);
mods.immersiveengineering.Crusher.addRecipe(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>, 4000);

/*Address lack of ore processing for some ores */
	/* Sticky Ore */
furnace.addRecipe(<minecraft:slime_ball> * 2, <aroma1997sdimension:miningore>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:slime_ball> * 4, <aroma1997sdimension:miningore>, 2048);
Grindstone.addRecipe(<aroma1997sdimension:miningore>, <minecraft:slime_ball> * 2, 0.85f);
AlchemyTable.addRecipe(<minecraft:slime_ball> * 4, [<aroma1997sdimension:miningore>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
Pulverizer.addRecipe(<minecraft:slime_ball> * 4, <aroma1997sdimension:miningore>, 4000);
mods.actuallyadditions.Crusher.addRecipe(<minecraft:slime_ball> * 4, <aroma1997sdimension:miningore>);
mods.extrautils2.Crusher.add(<minecraft:slime_ball> * 4, <aroma1997sdimension:miningore>);
	/* Clay Ore */
furnace.addRecipe(<minecraft:clay_ball> * 4, <aroma1997sdimension:miningore:1>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:clay_ball> * 8, <aroma1997sdimension:miningore:1>, 2048);
Grindstone.addRecipe(<aroma1997sdimension:miningore:1>, <minecraft:clay_ball> * 4, 0.85f);
AlchemyTable.addRecipe(<minecraft:clay_ball> * 8, [<aroma1997sdimension:miningore:1>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
Pulverizer.addRecipe(<minecraft:clay_ball> * 8, <aroma1997sdimension:miningore:1>, 4000);
mods.actuallyadditions.Crusher.addRecipe(<minecraft:clay_ball> * 8, <aroma1997sdimension:miningore:1>);
mods.extrautils2.Crusher.add(<minecraft:clay_ball> * 8, <aroma1997sdimension:miningore:1>);
	/* Prosperity ore */
furnace.addRecipe(<mysticalagriculture:crafting:5> * 2, <mysticalagriculture:prosperity_ore>);
mods.immersiveengineering.Crusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:prosperity_ore>, 2048);
Grindstone.addRecipe(<mysticalagriculture:prosperity_ore>, <mysticalagriculture:crafting:5> * 2, 0.85f);
AlchemyTable.addRecipe(<mysticalagriculture:crafting:5> * 4, [<mysticalagriculture:prosperity_ore>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
mods.actuallyadditions.Crusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:prosperity_ore>);
mods.extrautils2.Crusher.add(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:prosperity_ore>);
	/* Nether Prosperity Ore */
furnace.addRecipe(<mysticalagriculture:crafting:5> * 2, <mysticalagriculture:nether_prosperity_ore>);
mods.immersiveengineering.Crusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:nether_prosperity_ore>, 2048);
Grindstone.addRecipe(<mysticalagriculture:nether_prosperity_ore>, <mysticalagriculture:crafting:5> * 2, 0.85f);
AlchemyTable.addRecipe(<mysticalagriculture:crafting:5> * 4, [<mysticalagriculture:nether_prosperity_ore>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
mods.actuallyadditions.Crusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:nether_prosperity_ore>);
mods.extrautils2.Crusher.add(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:nether_prosperity_ore>);
	/* End Prosperity Ore */
furnace.addRecipe(<mysticalagriculture:crafting:5> * 2, <mysticalagriculture:end_prosperity_ore>);
mods.immersiveengineering.Crusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:end_prosperity_ore>, 2048);
Grindstone.addRecipe(<mysticalagriculture:end_prosperity_ore>, <mysticalagriculture:crafting:5> * 2, 0.85f);
AlchemyTable.addRecipe(<mysticalagriculture:crafting:5> * 4, [<mysticalagriculture:end_prosperity_ore>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
mods.actuallyadditions.Crusher.addRecipe(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:end_prosperity_ore>);
mods.extrautils2.Crusher.add(<mysticalagriculture:crafting:5> * 4, <mysticalagriculture:end_prosperity_ore>);
	/* Inferium Ore */
furnace.addRecipe(<mysticalagriculture:crafting> * 2, <mysticalagriculture:inferium_ore>);
mods.immersiveengineering.Crusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:inferium_ore>, 2048);
Grindstone.addRecipe(<mysticalagriculture:inferium_ore>, <mysticalagriculture:crafting> * 2, 0.85f);
AlchemyTable.addRecipe(<mysticalagriculture:crafting> * 4, [<mysticalagriculture:inferium_ore>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
mods.actuallyadditions.Crusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:inferium_ore>);
mods.extrautils2.Crusher.add(<mysticalagriculture:crafting> * 4, <mysticalagriculture:inferium_ore>);
	/* Nether Inferium Ore */
furnace.addRecipe(<mysticalagriculture:crafting> * 2, <mysticalagriculture:nether_inferium_ore>);
mods.immersiveengineering.Crusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:nether_inferium_ore>, 2048);
Grindstone.addRecipe(<mysticalagriculture:nether_inferium_ore>, <mysticalagriculture:crafting> * 2, 0.85f);
AlchemyTable.addRecipe(<mysticalagriculture:crafting> * 4, [<mysticalagriculture:nether_inferium_ore>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
mods.actuallyadditions.Crusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:nether_inferium_ore>);
mods.extrautils2.Crusher.add(<mysticalagriculture:crafting> * 4, <mysticalagriculture:nether_inferium_ore>);
	/* End Inferium Ore */
furnace.addRecipe(<mysticalagriculture:crafting> * 2, <mysticalagriculture:end_inferium_ore>);
mods.immersiveengineering.Crusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:end_inferium_ore>, 2048);
Grindstone.addRecipe(<mysticalagriculture:end_inferium_ore>, <mysticalagriculture:crafting> * 2, 0.85f);
AlchemyTable.addRecipe(<mysticalagriculture:crafting> * 4, [<mysticalagriculture:end_inferium_ore>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
mods.actuallyadditions.Crusher.addRecipe(<mysticalagriculture:crafting> * 4, <mysticalagriculture:end_inferium_ore>);
mods.extrautils2.Crusher.add(<mysticalagriculture:crafting> * 4, <mysticalagriculture:end_inferium_ore>);
	/* Slime Ore */
furnace.addRecipe(<minecraft:slime_ball> * 12, <extraplanets:saturn:12>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:slime_ball> * 24, <extraplanets:saturn:12>, 2048);
Grindstone.addRecipe(<extraplanets:saturn:12>, <minecraft:slime_ball> * 12, 0.85f);
AlchemyTable.addRecipe(<minecraft:slime_ball> * 24, [<extraplanets:saturn:12>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
Pulverizer.addRecipe(<minecraft:slime_ball> * 24, <extraplanets:saturn:12>, 4000);
mods.actuallyadditions.Crusher.addRecipe(<minecraft:slime_ball> * 24, <extraplanets:saturn:12>);
mods.extrautils2.Crusher.add(<minecraft:slime_ball> * 24, <extraplanets:saturn:12>);
	/* Silicon Ore */
furnace.addRecipe(<appliedenergistics2:material:5>, <galacticraftplanets:venus:10>);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:5> * 2, <galacticraftplanets:venus:10>, 2048);
Grindstone.addRecipe(<galacticraftplanets:venus:10>, <appliedenergistics2:material:5>, 0.85f);
AlchemyTable.addRecipe(<appliedenergistics2:material:5> * 2, [<galacticraftplanets:venus:10>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
Pulverizer.addRecipe(<appliedenergistics2:material:5> * 2, <galacticraftplanets:venus:10>, 4000);
mods.actuallyadditions.Crusher.addRecipe(<appliedenergistics2:material:5> * 2, <galacticraftplanets:venus:10>);
mods.extrautils2.Crusher.add(<appliedenergistics2:material:5> * 2, <galacticraftplanets:venus:10>);
	/* Sand>Silicone */
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:5>, <ore:sand>, 2048);
AlchemyTable.addRecipe(<appliedenergistics2:material:5>, [<ore:sand>, <bloodmagic:cutting_fluid>.withTag({})], 400, 200, 0);
Pulverizer.addRecipe(<appliedenergistics2:material:5>, <minecraft:sand:*>, 4000);
mods.actuallyadditions.Crusher.addRecipe(<appliedenergistics2:material:5>, <minecraft:sand:*>);
mods.extrautils2.Crusher.add(<appliedenergistics2:material:5>, <minecraft:sand>);
mods.extrautils2.Crusher.add(<appliedenergistics2:material:5>, <minecraft:sand:1>);

/* Fix an exploit allowing you to get leather with a Thermal Expansion Sawmill and Pam's HarvestCraft Woven Cotton */
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_boots>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_chestplate>);

recipes.addShaped(<minecraft:leather_helmet> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.addShaped(<minecraft:leather_chestplate> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>]
]);
recipes.addShaped(<minecraft:leather_leggings> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.addShaped(<minecraft:leather_boots> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);

/* Fix Solar Flux recipes */
recipes.remove(<solarflux:mirror>);
recipes.remove(<solarflux:solar_panel_2>);
recipes.remove(<solarflux:solar_panel_neutronium>);
recipes.addShaped(<solarflux:mirror> * 3, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], 
	[null, <ore:ingotSilver>, null]
]);
recipes.addShaped(<solarflux:solar_panel_2> * 2, [
	[<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>], 
	[<solarflux:solar_panel_1>, <ore:craftingPiston>, <solarflux:solar_panel_1>], 
	[<solarflux:solar_panel_1>, <solarflux:solar_panel_1>, <solarflux:solar_panel_1>]
]);
ExtremeCrafting.addShaped("neutroniumSolar", <solarflux:solar_panel_neutronium> * 2, [
	[null, null, <avaritia:resource:4>, <avaritia:resource:4>, null, <avaritia:resource:4>, <avaritia:resource:4>, null, null], 
	[null, <avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <solarflux:solar_panel_chaotic>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>, null],
	[<avaritia:resource:4>, <avaritia:resource:1>, null, null, <avaritia:resource:3>, null, null, <avaritia:resource:1>, <avaritia:resource:4>],
	[<avaritia:resource:4>, <avaritia:resource:1>, null, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, null, <avaritia:resource:1>, <avaritia:resource:4>],
	[null, <solarflux:solar_panel_chaotic>, <avaritia:resource:3>, <avaritia:resource:2>, <avaritia:resource:5>, <avaritia:resource:2>, <avaritia:resource:3>, <solarflux:solar_panel_chaotic>, null],
	[<avaritia:resource:4>, <avaritia:resource:1>, null, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, null, <avaritia:resource:1>, <avaritia:resource:4>],
	[<avaritia:resource:4>, <avaritia:resource:1>, null, null, <avaritia:resource:3>, null, null, <avaritia:resource:1>, <avaritia:resource:4>],
	[null, <avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <solarflux:solar_panel_chaotic>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>, null],
	[null, null, <avaritia:resource:4>, <avaritia:resource:4>, null, <avaritia:resource:4>, <avaritia:resource:4>, null, null]
]);

/* Add casting to fill TE Ducts*/
Casting.addBasinRecipe(
	<thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:6>, <liquid:redstone>, 200, true
);
Casting.addBasinRecipe(
	<thermaldynamics:duct_0:3>, <thermaldynamics:duct_0:7>, <liquid:redstone>, 200, true
);
Casting.addBasinRecipe(
	<thermaldynamics:duct_0:8>, <thermaldynamics:duct_0:4>, <liquid:redstone>, 200, true
);
Casting.addBasinRecipe(
	<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32>, <liquid:glowstone>, 200, true
);
Casting.addBasinRecipe(
	<thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:1>, <liquid:glowstone>, 200, true
);

/* Remove melting recipes for repair */
Melting.removeRecipe(<liquid:redstone>);
Melting.removeRecipe(<liquid:glowstone>);

/* Re-add melting recipes to encourage making Thermal Expansion machines */
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 50,
	<minecraft:redstone>, 1020
);
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 450,
	<ore:blockRedstone>, 1020
);
mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 125,
	<ore:crystalRedstone>, 510
);
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 125,
	<minecraft:glowstone_dust>, 1020
);
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 500,
	<ore:glowstone>, 1020
);
mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 125,
	<thermalfoundation:material:894>, 510
);

/* Processing recipes for dimensional shard ore from RFTools */
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:0>, 0.7);
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:1>, 0.7);
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:2>, 0.7);

mods.actuallyadditions.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>);
mods.actuallyadditions.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>);
mods.actuallyadditions.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>);

mods.immersiveengineering.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>, 6000);
mods.immersiveengineering.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>, 6000);
mods.immersiveengineering.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>, 6000);

mods.extrautils2.Crusher.add(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>);
mods.extrautils2.Crusher.add(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>);
mods.extrautils2.Crusher.add(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>);

Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>, 4000);
Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>, 4000);
Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>, 4000);
RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:0>, 2000);
RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:1>, 2000);
RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:2>, 2000);

/* Add AE2 Grinder Recipes for stuffs*/
Grinder.addRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:block_misc:3>, 8, <actuallyadditions:item_dust:7>, 0.95);
Grinder.addRecipe(<immersiveengineering:metal:14>, <ic2:resource:4>, 8, <immersiveengineering:metal:14>, 0.95);
Grinder.removeRecipe(<minecraft:gravel>);
Grinder.addRecipe(<minecraft:gravel>, <minecraft:cobblestone>, 6, <minecraft:gravel>, 0.33);
Grinder.addRecipe(<minecraft:sand>, <minecraft:gravel>, 6, <minecraft:sand>, 0.33, <minecraft:flint>, 0.75);
Grinder.addRecipe(<appliedenergistics2:material:5>, <minecraft:sand>, 6);
Grinder.addRecipe(<minecraft:blaze_powder> * 4, <minecraft:blaze_rod>, 4, <thermalfoundation:material:771>, 0.5);
Grinder.addRecipe(<minecraft:dye:11> * 3, <minecraft:yellow_flower>, 4, <minecraft:dye:11>, 0.86, <enderio:item_material:46>, 0.33);
Grinder.addRecipe(<minecraft:dye:1> * 3, <minecraft:red_flower>,4, <minecraft:dye:1>, 0.86, <enderio:item_material:46>, 0.33);
Grinder.addRecipe(<minecraft:sugar> * 3, <minecraft:reeds>, 4, <minecraft:sugar>, 0.77, <enderio:item_material:46>, 0.30);

/* Add recipes for bone meal from dragon bones. */
recipes.addShapeless(<minecraft:dye:15> * 5, [
	<iceandfire:dragonbone>
]);
Grinder.addRecipe(<minecraft:dye:15> * 8, 
	<iceandfire:dragonbone>, 6, <minecraft:dye:15>, 0.25
);
Pulverizer.addRecipe(<minecraft:dye:15> * 10, <iceandfire:dragonbone>, 4000);
mods.extrautils2.Crusher.add(<minecraft:dye:15> * 10, <iceandfire:dragonbone>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:dye:15> * 10, <iceandfire:dragonbone>, 6000);
mods.actuallyadditions.Crusher.addRecipe(<minecraft:dye:15> * 10, <iceandfire:dragonbone>);

/* Makes Actually Additions Crystal Clusters Craftable cuz they're pretty */
Altar.addDiscoveryAltarRecipe("THBNewage:shaped/internal/altar/crystalCluster", <actuallyadditions:block_crystal_cluster_redstone>, 100, 80, [
	null, <actuallyadditions:item_crystal_shard>, null,
	<actuallyadditions:item_crystal_shard>, <actuallyadditions:item_crystal_shard>, <actuallyadditions:item_crystal_shard>,
	null, <actuallyadditions:item_crystal_shard>, null]
);
Altar.addDiscoveryAltarRecipe("THBNewage:shaped/internal/altar/crystalCluster", <actuallyadditions:block_crystal_cluster_lapis>, 100, 80, [
	null, <actuallyadditions:item_crystal_shard:1>, null,
	<actuallyadditions:item_crystal_shard:1>, <actuallyadditions:item_crystal_shard:1>, <actuallyadditions:item_crystal_shard:1>,
	null, <actuallyadditions:item_crystal_shard:1>, null]
);
Altar.addDiscoveryAltarRecipe("THBNewage:shaped/internal/altar/crystalCluster", <actuallyadditions:block_crystal_cluster_diamond>, 100, 80, [
	null, <actuallyadditions:item_crystal_shard:2>, null,
	<actuallyadditions:item_crystal_shard:2>, <actuallyadditions:item_crystal_shard:2>, <actuallyadditions:item_crystal_shard:2>,
	null, <actuallyadditions:item_crystal_shard:2>, null]
);
Altar.addDiscoveryAltarRecipe("THBNewage:shaped/internal/altar/crystalCluster", <actuallyadditions:block_crystal_cluster_coal>, 100, 80, [
	null, <actuallyadditions:item_crystal_shard:3>, null,
	<actuallyadditions:item_crystal_shard:3>, <actuallyadditions:item_crystal_shard:3>, <actuallyadditions:item_crystal_shard:3>,
	null, <actuallyadditions:item_crystal_shard:3>, null]
);
Altar.addDiscoveryAltarRecipe("THBNewage:shaped/internal/altar/crystalCluster", <actuallyadditions:block_crystal_cluster_emerald>, 100, 80, [
	null, <actuallyadditions:item_crystal_shard:4>, null,
	<actuallyadditions:item_crystal_shard:4>, <actuallyadditions:item_crystal_shard:4>, <actuallyadditions:item_crystal_shard:4>,
	null, <actuallyadditions:item_crystal_shard:4>, null]
);
Altar.addDiscoveryAltarRecipe("THBNewage:shaped/internal/altar/crystalCluster", <actuallyadditions:block_crystal_cluster_iron>, 100, 80, [
	null, <actuallyadditions:item_crystal_shard:5>, null,
	<actuallyadditions:item_crystal_shard:5>, <actuallyadditions:item_crystal_shard:5>, <actuallyadditions:item_crystal_shard:5>,
	null, <actuallyadditions:item_crystal_shard:5>, null]
);

/* Change Snad Recipe to make it not so simple to obtain */
recipes.remove(<snad:snad:*>);
recipes.addShaped(<snad:snad>, [
	[<minecraft:dye:15>, <minecraft:sand>, <minecraft:dye:15>], 
	[<minecraft:sand>, <minecraft:sugar>, <minecraft:sand>], 
	[<minecraft:dye:15>, <minecraft:sand>, <minecraft:dye:15>]
]);
recipes.addShaped(<snad:snad:1>, [
	[<minecraft:dye:15>, <minecraft:sand:1>, <minecraft:dye:15>], 
	[<minecraft:sand:1>, <minecraft:sugar>, <minecraft:sand:1>], 
	[<minecraft:dye:15>, <minecraft:sand:1>, <minecraft:dye:15>]
]);

/* Fix Ice and Fire Lectern making no sense. */
recipes.remove(<iceandfire:lectern>);
recipes.addShaped(<iceandfire:lectern>, [[<ore:stickWood>], [<ore:plankWood>], [<ore:plankWood>]]);

/* Makes recipe to clear nametags */
recipes.addShapeless(<minecraft:name_tag>, 
	[<minecraft:name_tag:*>]
);

/*Fix metal rod recipe conflict.*/
recipes.remove(<abyssalcraft:ironp>);
recipes.addShaped(<abyssalcraft:ironp> * 3, [
	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);	