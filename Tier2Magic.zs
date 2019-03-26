import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Altar;

/* Declare values and variables to make my life easier */
val wCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]});
val bkCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]});
val yCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]});
val gCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]});
val rCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]});
val bCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]});
var RArray = [
	<thaumcraft:salis_mundus>,
	<bloodmagic:soul_snare>,
	<botania:spreader>,
	<botania:spreader:2>,
	<botania:spreader:3>
] as IItemStack[];

/* Remove recipes to make this script work*/
for item in RArray{
	recipes.remove(item);
}

/* Re-add Recipes to make things playable */
Altar.addAttunementAltarRecipe("THBNewage:shaped/internal/altar/Tier2Magic", <thaumcraft:salis_mundus> * 4, 300, 100, 
	[null, <minecraft:flint>, null,
	wCrystal, <wizardry:nacre_pearl:*>, bkCrystal,
	null, <minecraft:bowl>, null,
	yCrystal, gCrystal, rCrystal, bCrystal]
);
Altar.addAttunementAltarRecipe("THBNewage:shaped/internal/altar/Tier2Magic", <bloodmagic:soul_snare> * 4, 300, 100, 
	[null, <astralsorcery:itemrockcrystalsimple:*>, null,
	<astralsorcery:itemrockcrystalsimple:*>, <wizardry:nacre_pearl:*>, <astralsorcery:itemrockcrystalsimple:*>,
	null, <astralsorcery:itemrockcrystalsimple:*>, null,
	<minecraft:string>, <minecraft:string>, <minecraft:string>, <minecraft:string>]
);
Altar.addAttunementAltarRecipe("THBNewage:shaped/internal/altar/Tier2Magic", <botania:spreader>, 300, 100, 
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>,
	<wizardry:nacre_pearl:*>, <astralsorcery:itemcelestialcrystal:*>, null,
	<botania:livingwood>, <botania:livingwood>, <botania:livingwood>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>]
);
Altar.addConstellationAltarRecipe("THBNewage:shaped/internal/altar/Tier2Magic", <botania:spreader:2>, 1000, 100, 
	[<botania:dreamwood>, <botania:dreamwood>, <botania:dreamwood>,
	<wizardry:nacre_pearl:*>, <astralsorcery:blockcollectorcrystal:*>, null,
	<botania:dreamwood>, <botania:dreamwood>, <botania:dreamwood>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, 
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>]
);
Altar.addTraitAltarRecipe("THBNewage:shaped/internal/altar/Tier2Magic", <botania:spreader:3>, 2000, 100, 
	[null, null, null,
	<wizardry:nacre_pearl:*>, <botania:spreader:2>, <wizardry:nacre_pearl:*>,
	null, null, null,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>, 
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>, <liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>,
	<liquid:astralsorcery.liquidstarlight>,
	<astralsorcery:blockcelestialcollectorcrystal:*>, <botania:manaresource:5>, <botania:manaresource:9>, <thaumcraft:salis_mundus>], 
	"astralsorcery.constellation.aevitas"
);