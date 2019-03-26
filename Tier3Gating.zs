import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.appliedenergistics2.Inscriber;
import mods.avaritia.ExtremeCrafting;

/* Declare values and variables to make my life easier */
val hardGlass = <ore:blockGlassHardened>;
val ironI = <minecraft:iron_ingot>;
val redstoneD = <minecraft:redstone>;
val leadI = <ore:ingotLead>;
val sulfurD = <ore:dustSulfur>;
val restC = <actuallyadditions:item_crystal>;
val enoriC = <actuallyadditions:item_crystal:5>;
val Rchip = <buildcraftsilicon:redstone_chipset>;
val Ichip = <buildcraftsilicon:redstone_chipset:1>;
val Gchip = <buildcraftsilicon:redstone_chipset:2>;
val Qchip = <buildcraftsilicon:redstone_chipset:3>;
val Dchip = <buildcraftsilicon:redstone_chipset:4>;
val treatedWood = <immersiveengineering:treated_wood>;
val treatedStick = <immersiveengineering:material:0>;
val REBattA = <ic2:re_battery:*>;
val circuitV = <ore:circuitBasic>;
val insTinCab = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}) as IItemStack;
val insCopCab = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}) as IItemStack;
var RArray = [
	<ic2:barrel>,
	<ic2:scaffold:2>,
	<ic2:scaffold>,
	<ic2:resource:12>,
	<ic2:te:3>,
	<ic2:te:72>,
	<ic2:batpack>,
	<galacticraftcore:battery:100>,
	<galacticraftcore:emergency_box>,
	<galacticraftcore:cargo>,
	<galacticraftcore:cargo:4>,
	<galacticraftcore:basic_item:19>,
	<galacticraftcore:buggymat:1>,
	<galacticraftcore:buggymat>,
	<galacticraftcore:basic_item:20>,
	<galacticraftcore:air_fan>,
	<galacticraftcore:machine2:4>,
	<galacticraftcore:machine2:12>,
	<galacticraftcore:rocket_workbench>,
	<galacticraftcore:oxygen_concentrator>,
	<galacticraftplanets:mars_machine:4>,
	<galacticraftplanets:mars_machine>,
	<galacticraftplanets:geothermal_generator>,
	<galacticraftplanets:atomic_battery>,
	<galacticraftcore:refinery>,
	<extraplanets:basic_chemical_injector>,
	<extraplanets:mercury_battery>,
	<extraplanets:nickel_battery>,
	<extraplanets:zinc_battery>,
	<moreplanets:space_warper_core>,
	<appliedenergistics2:charger>,
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:part:180>,
	<ic2:resource:12>,
	<ic2:crafting:1>,
	<ic2:crafting:2>,
	<ic2:crafting:5>,
	<ic2:crafting:6>,
	<ic2:crafting:7>,
	<ic2:crafting:8>,
	<ic2:re_battery:*>,
	<ic2:advanced_re_battery:*>,
	<xnet:connector_upgrade>,
	<xnet:redstone_proxy>,
	<xnet:netcable:4>,
	<xnet:controller>,
	<xnet:router>,
	<xnet:wireless_router>,
	<xnet:antenna_dish>,
	<xnet:antenna>,
	<thermaldynamics:duct_0>,
	<thermaldynamics:duct_0:1>,
	<thermaldynamics:duct_0:3>,
	<thermaldynamics:duct_0:4>,
	<thermaldynamics:duct_0:6>,
	<thermaldynamics:duct_0:7>,
	<thermaldynamics:duct_0:8>,
	<thermaldynamics:duct_0:9>,
	<thermaldynamics:duct_64:3>,
	<thermaldynamics:duct_64:1>,
	<thermaldynamics:duct_48>,
	<thermaldynamics:servo>,
	<thermaldynamics:servo:1>,
	<thermaldynamics:servo:2>,
	<thermaldynamics:servo:3>,
	<thermaldynamics:servo:4>,
	<thermaldynamics:filter>,
	<thermaldynamics:filter:1>,
	<thermaldynamics:filter:2>,
	<thermaldynamics:filter:3>,
	<thermaldynamics:filter:4>,
	<thermaldynamics:relay>,
	<thermaldynamics:retriever>,
	<thermaldynamics:retriever:1>,
	<thermaldynamics:retriever:2>,
	<thermaldynamics:retriever:3>,
	<thermaldynamics:retriever:4>
] as IItemStack[];

/* Removes recipes being replaced for tier 3 */
for item in RArray {
    recipes.remove(item);
}
recipes.removeShaped(<xnet:netcable> * 16, [
	[<minecraft:string>, redstoneD, <minecraft:string>], 
	[redstoneD, <minecraft:gold_nugget>, redstoneD], 
	[<minecraft:string>, redstoneD, <minecraft:string>]
]);
recipes.removeShaped(<xnet:connector>, [
	[<ore:dyeBlue>, <ore:chest>, <ore:dyeBlue>], 
	[redstoneD, <minecraft:gold_ingot>, redstoneD], 
	[<ore:dyeBlue>, redstoneD, <ore:dyeBlue>]
]);
recipes.removeShaped(<xnet:advanced_connector>, [
	[<xnet:connector>, <minecraft:ender_pearl>], 
	[<minecraft:diamond>, redstoneD]
]);
recipes.removeShaped(<thermaldynamics:duct_16>, [
	[<ore:ingotCopper>, <ore:blockGlass>, <ore:ingotCopper>]
]); /* Fluiduct */
recipes.removeShaped(<thermaldynamics:duct_16:1>, [
	[<ore:ingotCopper>, leadI, <ore:ingotCopper>]
]); /* Opaque Fluiduct */ 
recipes.removeShaped(<thermaldynamics:duct_32>, [
	[<ore:ingotTin>, hardGlass, <ore:ingotTin>]
]); /*Itemduct */
recipes.removeShaped(<thermaldynamics:duct_32:1>, [
	[<ore:ingotTin>, leadI, <ore:ingotTin>]
]); /* Opaque Itemduct */
recipes.removeShaped(<thermaldynamics:duct_16:2>, [
	[<ore:ingotInvar>, hardGlass, <ore:ingotInvar>]
]); /* Hardened Fluiduct */
recipes.removeShaped(<thermaldynamics:duct_16:3>, [
	[<ore:ingotInvar>, leadI, <ore:ingotInvar>]
]); /* Opaque Hardened Fluiduct */
recipes.removeShapeless(<thermaldynamics:duct_16:4>, [
	<thermaldynamics:duct_16:2>, <ore:nuggetSignalum>, <ore:nuggetSignalum>, <ore:nuggetSignalum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>
]);
recipes.removeShapeless(<thermaldynamics:duct_16:4>, [
	<thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermalfoundation:material:165>, <thermalfoundation:material:161>
]);
recipes.removeShapeless(<thermaldynamics:duct_16:5>, [
	<thermaldynamics:duct_16:3>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:225>, <thermalfoundation:material:225>, <thermalfoundation:material:225>
]);
recipes.removeShapeless(<thermaldynamics:duct_16:5>, [
	<thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <thermalfoundation:material:165>, <thermalfoundation:material:161>
]);
recipes.removeShaped(<thermaldynamics:duct_16:6>, [
	[<ore:ingotBronze>, <ore:blockGlassHardened>, <ore:ingotBronze>], 
	[<ore:blockGlassHardened>, <thermaldynamics:duct_16:2>, <ore:blockGlassHardened>], 
	[<ore:ingotBronze>, <ore:blockGlassHardened>, <ore:ingotBronze>]
]);
recipes.removeShaped(<thermaldynamics:duct_16:7>, [
	[<ore:ingotBronze>, <ore:blockGlassHardened>, <ore:ingotBronze>], 
	[<ore:blockGlassHardened>, <thermaldynamics:duct_16:3>, <ore:blockGlassHardened>], 
	[<ore:ingotBronze>, <ore:blockGlassHardened>, <ore:ingotBronze>]
]);
recipes.removeShapeless(<thermaldynamics:duct_32:4> * 3, [
	<thermaldynamics:duct_32>, <thermaldynamics:duct_32>, <thermaldynamics:duct_32>, <ore:ingotElectrum>, <ore:ingotSignalum>
]);
recipes.removeShapeless(<thermaldynamics:duct_32:4>, [
	<thermaldynamics:duct_32>, <thermalfoundation:material:229>, <ore:nuggetSignalum>, <thermalfoundation:material:229>, <thermalfoundation:material:225>, <thermalfoundation:material:225>, <ore:nuggetElectrum>
]);
recipes.removeShapeless(<thermaldynamics:duct_32:5> *3, [
	<thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <ore:ingotElectrum>, <ore:ingotSignalum>
]);
recipes.removeShapeless(<thermaldynamics:duct_32:5>, [
	<thermaldynamics:duct_32:3>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:225>, <thermalfoundation:material:225>, <thermalfoundation:material:225>
]);
recipes.removeShapeless(<thermaldynamics:duct_32:6>, [
	<thermaldynamics:duct_32:2>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:225>, <thermalfoundation:material:225>, <thermalfoundation:material:225>
]);
recipes.removeShapeless(<thermaldynamics:duct_32:6> * 3, [
	<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:2>, <thermalfoundation:material:165>, <thermalfoundation:material:161>
]);
recipes.removeShapeless(<thermaldynamics:duct_32:7> * 3, [
	<thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <thermalfoundation:material:165>, <thermalfoundation:material:161>
]);
recipes.removeShapeless(<thermaldynamics:duct_32:7> * 3, [
	<thermaldynamics:duct_32:3>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:229>, <thermalfoundation:material:225>, <thermalfoundation:material:225>, <thermalfoundation:material:225>
]);

/* Replaces recipes that were removed */
	/* Industrialcraft */
recipes.addShaped(<ic2:barrel>, [
	[treatedWood], 
	[<ic2:rubber_wood>], 
	[treatedWood]
]);
recipes.addShaped(<ic2:scaffold:2>, [
	[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
	[<ic2:fence>, <ic2:fence>, <ic2:fence>], 
	[enoriC, enoriC, enoriC]
]);
recipes.addShaped(<ic2:scaffold>, [
	[treatedWood, treatedWood, treatedWood], 
	[null, treatedStick, null], 
	[treatedStick, null, treatedStick]
]);
recipes.addShaped(<ic2:resource:12>, [
	[enoriC, <ore:plateIron>, enoriC], 
	[<ore:plateIron>, null, <ore:plateIron>], 
	[enoriC, <ore:plateIron>, enoriC]
]);
recipes.addShaped(<ic2:te:3>, [
	[REBattA], 
	[<ic2:te:12>], 
	[<ic2:te:46>]
]);
recipes.addShaped(<ic2:te:72>, [
	[treatedWood, insTinCab, treatedWood], 
	[REBattA, REBattA, REBattA], 
	[treatedWood, treatedWood, treatedWood]
]);
recipes.addShaped(<ic2:batpack>, [
	[REBattA, circuitV, REBattA], 
	[REBattA, treatedWood, REBattA], 
	[REBattA, null, REBattA]
]);
	/* Galacticraft/More Planets/Extra Planets */
recipes.addShaped(<galacticraftcore:battery:100> * 2, [
	[null, <galacticraftcore:aluminum_wire>, null], 
	[<ore:plateTin>, sulfurD, <ore:plateTin>], 
	[<ore:plateTin>, Rchip, <ore:plateTin>]
]);
recipes.addShaped(<galacticraftcore:emergency_box>, [
	[<galacticraftcore:glowstone_torch>, <ore:plateTin>, <galacticraftcore:glowstone_torch>], 
	[<ore:plateTin>, <ore:chest>, <ore:plateTin>], 
	[<galacticraftcore:glowstone_torch>, <ore:plateTin>, <galacticraftcore:glowstone_torch>]
]);
recipes.addShaped(<galacticraftcore:cargo>, [
	[<ore:plateSteel>, <minecraft:hopper>, <ore:plateSteel>], 
	[<ore:plateAluminum>, <ore:chest>, <ore:plateAluminum>], 
	[<ore:plateSteel>, Rchip, <ore:plateSteel>]
]);
recipes.addShaped(<galacticraftcore:cargo:4>, [
	[<ore:plateSteel>, Rchip, <ore:plateSteel>], 
	[<ore:plateAluminum>, <ore:chest>, <ore:plateAluminum>], 
	[<ore:plateSteel>, <minecraft:hopper>, <ore:plateSteel>]
]);
recipes.addShaped(<galacticraftcore:basic_item:19>, [
	[null, <ore:plateAluminum>, null], 
	[<ore:plateIron>, <minecraft:repeater>, <ore:plateIron>], 
	[restC, <ore:waferBasic>, restC]
]);
recipes.addShaped(<galacticraftcore:buggymat:1>, [
	[null, null, <ore:plateSteel>], 
	[null, <ore:blockWool>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);
recipes.addShaped(<galacticraftcore:buggymat>, [
	[null, <ore:itemRubber>, null], 
	[<ore:itemRubber>, <ore:plateSteel>, <ore:itemRubber>], 
	[null, <ore:itemRubber>, null]
]);
recipes.addShaped(<galacticraftcore:basic_item:20>, [
	[<actuallyadditions:item_crystal_empowered>, <galacticraftcore:air_vent>, <actuallyadditions:item_crystal_empowered:1>], 
	[<ore:plateBronze>, <ore:plateSteel>, <ore:plateBronze>], 
	[<ore:plateBronze>, <ore:waferBasic>, <ore:plateBronze>]
]);
recipes.addShaped(<galacticraftcore:air_fan>, [
	[<ore:plateSteel>, null, <ore:plateSteel>], 
	[null, <ore:waferBasic>, null], 
	[<ore:plateSteel>, Rchip, <ore:plateSteel>]
]);
recipes.addShaped(<galacticraftcore:dungeonfinder>, [
	[<ore:ingotTitanium>, <ore:compressedDesh>, <ore:ingotTitanium>], 
	[<ore:compressedDesh>, <galacticraftcore:meteoric_iron_raw>, <ore:compressedDesh>], 
	[<ore:ingotTitanium>, <ore:compressedDesh>, <ore:ingotTitanium>]
]);
recipes.addShaped(<galacticraftcore:machine2:4>, [
	[<ore:ingotAluminum>, <ore:lever>, <ore:ingotAluminum>], 
	[Ichip, <minecraft:furnace>, Ichip], 
	[<galacticraftcore:aluminum_wire>, <actuallyadditions:item_misc:8>, <galacticraftcore:aluminum_wire>]
]);
recipes.addShaped(<galacticraftcore:machine2:12>, [
	[<ore:plateSteel>, <buildcraftsilicon:laser>, <ore:plateSteel>], 
	[Gchip, <minecraft:anvil>, Gchip], 
	[<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>]
]);
recipes.addShaped(<galacticraftcore:rocket_workbench>, [
	[<ore:ingotSteel>, <thermalfoundation:tool.shears_steel>, <ore:ingotSteel>], 
	[Gchip, <ore:waferAdvanced>, <buildcraftsilicon:laser>], 
	[<ore:plateSteel>, <buildcraftsilicon:advanced_crafting_table>, <ore:plateSteel>]
]);
recipes.addShaped(<galacticraftcore:oxygen_concentrator>, [
	[<ore:plateSteel>, Rchip, <ore:plateSteel>], 
	[<ore:plateTin>, <galacticraftcore:canister>, <ore:plateTin>], 
	[<ore:plateSteel>, <galacticraftcore:air_vent>, <ore:plateSteel>]
]);
recipes.addShaped(<galacticraftplanets:mars_machine:4>, [
	[<ore:compressedDesh>, <galacticraftplanets:item_basic_mars:3>, <ore:compressedDesh>], 
	[Dchip, <ore:bed>, Dchip], 
	[<ore:compressedDesh>, <galacticraftplanets:item_basic_mars:3>, <ore:compressedDesh>]
]);
recipes.addShaped(<galacticraftplanets:mars_machine>, [
	[<ore:ingotDesh>, <buildcraftfactory:flood_gate>, <ore:ingotDesh>], 
	[Dchip, <galacticraftcore:canister>, Dchip], 
	[<ore:compressedDesh>, <galacticraftcore:oxygen_concentrator>, <ore:compressedDesh>]
]);
recipes.addShaped(<galacticraftplanets:atmospheric_valve>, [
	[<galacticraftplanets:item_basic_mars:2>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_mars:2>], 
	[null, <buildcraftsilicon:plug_gate>, null]
]);
recipes.addShaped(<galacticraftplanets:geothermal_generator>, [
	[<ore:plateCopper>, <galacticraftplanets:atmospheric_valve>, <ore:plateCopper>], 
	[<galacticraftcore:aluminum_wire>, <galacticraftcore:machine>, <galacticraftcore:aluminum_wire>], 
	[<ore:plateCopper>, Gchip, <ore:plateCopper>]
]);
recipes.addShaped(<galacticraftplanets:atomic_battery>, [
	[null, <galacticraftcore:aluminum_wire:3>, null], 
	[<ore:ingotLead>, <galacticraftplanets:basic_item_venus:2>, <ore:ingotLead>], 
	[<ore:ingotLead>, <ore:plateLead>, <ore:ingotLead>]
]);
recipes.addShaped(<galacticraftcore:refinery>, [
	[Dchip, <galacticraftcore:canister:1>, Dchip], 
	[<ore:stone>, <galacticraftcore:canister:1>, <ore:stone>], 
	[<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>]
]);
recipes.addShaped(<extraplanets:basic_chemical_injector>, [
	[<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>], 
	[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], 
	[<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>]
]);
recipes.addShaped(<extraplanets:geiger_counter>, [
	[<ore:ingotCopper>, <ore:plateIron>, <ore:ingotCopper>], 
	[Dchip, <minecraft:compass>, Dchip], 
	[<ore:ingotLead>, <ore:plateIron>, <ore:ingotLead>]
]);
recipes.addShaped(<extraplanets:mercury_battery:100>, [
	[null, <galacticraftcore:aluminum_wire>, null], 
	[<extraplanets:compressed_mercury>, sulfurD, <extraplanets:compressed_mercury>], 
	[<extraplanets:compressed_mercury>, Rchip, <extraplanets:compressed_mercury>]
]);
recipes.addShaped(<extraplanets:nickel_battery:100>, [
	[null, <galacticraftcore:aluminum_wire>, null], 
	[<ore:plateNickel>, sulfurD, <ore:plateNickel>], 
	[<ore:plateNickel>, Rchip, <ore:plateNickel>]
]);
recipes.addShaped(<extraplanets:zinc_battery:100>, [
	[null, <galacticraftcore:aluminum_wire>, null], 
	[<extraplanets:tier8_items:4>, sulfurD, <extraplanets:tier8_items:4>], 
	[<extraplanets:tier8_items:4>, Rchip, <extraplanets:tier8_items:4>]
]);
recipes.addShaped(<moreplanets:space_warper_core>, [
	[<ore:compressedDesh>, <moreplanets:setrorium_shard>, <ore:compressedDesh>], 
	[Dchip, <cyclicmagic:ender_eye_orb>, Dchip], 
	[<moreplanets:setrorium_shard>, <galacticraftplanets:item_basic_mars:5>, <moreplanets:setrorium_shard>]
]);
	/* Applied Energistics */
recipes.addShaped(<appliedenergistics2:charger>, [
	[ironI, <ore:crystalFluix>, ironI], 
	[Rchip, null, null], 
	[ironI, <ore:crystalFluix>, ironI]
]);
recipes.addShaped(<appliedenergistics2:inscriber>, [
	[ironI, <minecraft:sticky_piston>, ironI], 
	[<ore:crystalFluix>, null, Rchip], 
	[ironI, <minecraft:sticky_piston>, ironI]
]);
recipes.addShaped(<appliedenergistics2:part:180>, [
	[null, <minecraft:glowstone_dust>, <appliedenergistics2:quartz_glass>], 
	[ironI, Rchip, <appliedenergistics2:quartz_glass>], 
	[null, <minecraft:glowstone_dust>, <appliedenergistics2:quartz_glass>]
]);
	/* Industrialcraft */
recipes.addShaped(<ic2:resource:12>, [
	[<ore:plateIron>, ironI, <ore:plateIron>], 
	[Rchip, <buildcrafttransport:pipe_diamond_item>, Rchip], 
	[<ore:plateIron>, ironI, <ore:plateIron>]
]);
recipes.addShaped(<ic2:crafting:1>, [
	[insCopCab, insCopCab, insCopCab], 
	[Ichip, <ore:plateIron>, Ichip], 
	[insCopCab, insCopCab, insCopCab]
]);
recipes.addShaped(<ic2:crafting:2>, [
	[restC, <minecraft:glowstone_dust>, restC], 
	[<minecraft:dye:4>, circuitV, <minecraft:dye:4>], 
	[restC, <minecraft:glowstone_dust>, restC]
]);
recipes.addShaped(<ic2:crafting:5>, [
	[<ic2:cable>, <ic2:cable>, <ic2:cable>], 
	[<ic2:cable>, <buildcrafttransport:pipe_structure>, <ic2:cable>], 
	[Rchip, <ic2:cable>, <ic2:cable>]
]);
recipes.addShaped(<ic2:crafting:6>, [
	[null, <ore:plateIron>, null], 
	[<buildcraftsilicon:redstone_chipset>, <ic2:crafting:5>, <ore:ingotIron>], 
	[null, <ore:plateIron>, null]
]);
recipes.addShaped(<ic2:crafting:7>, [
	[<ore:itemRubber>, <ore:plateCopper>, <ore:itemRubber>], 
	[<ore:itemRubber>, <buildcraftsilicon:plug_gate>, <ore:itemRubber>], 
	[<ore:itemRubber>, <ore:plateCopper>, <ore:itemRubber>]
]);
recipes.addShaped(<ic2:crafting:8>, [
	[<ic2:casing:1>, <ic2:crafting:5>, <ic2:casing:1>], 
	[<ic2:casing:1>, <minecraft:bucket>, <ic2:casing:1>], 
	[<ic2:casing:1>, <ic2:crafting:5>, <ic2:casing:1>]
]);
recipes.addShaped(<ic2:re_battery:26>, [
	[null, insTinCab, null], 
	[<ic2:casing:6>, sulfurD, <ic2:casing:6>], 
	[<ic2:casing:6>, Rchip, <ic2:casing:6>]
]);
recipes.addShaped(<ic2:advanced_re_battery:26>, [
	[insCopCab, <ic2:casing>, insCopCab], 
	[<ic2:casing>, sulfurD, <ic2:casing>], 
	[<ic2:casing>, Rchip, <ic2:casing>]
]);
	/* X-Net */
recipes.addShapeless(<xnet:connector_upgrade>, 
	[<minecraft:paper>, <ore:enderpearl>, Dchip, <actuallyadditions:item_crystal_empowered>]
);
recipes.addShaped(<xnet:redstone_proxy>, [
	[Rchip, redstoneD, Rchip], 
	[redstoneD, <rftools:machine_frame>, redstoneD], 
	[Rchip, redstoneD, Rchip]
]);
recipes.addShaped(<xnet:netcable> * 16, [
	[<minecraft:string>, redstoneD, <minecraft:string>], 
	[Rchip, <minecraft:gold_nugget>, Rchip], 
	[<minecraft:string>, redstoneD, <minecraft:string>]
]);
recipes.addShaped(<xnet:netcable:4> * 32, [
	[<minecraft:string>, <minecraft:redstone_block>, <minecraft:string>], 
	[Rchip, Gchip, Rchip], 
	[<minecraft:string>, <minecraft:redstone_block>, <minecraft:string>]
]);
recipes.addShaped(<xnet:connector>, [
	[<actuallyadditions:item_crystal:1>, <ore:chest>, <actuallyadditions:item_crystal:1>], 
	[Dchip, Gchip, Dchip], 
	[<actuallyadditions:item_crystal:1>, redstoneD, <actuallyadditions:item_crystal:1>]
]);
recipes.addShapeless(<xnet:advanced_connector>, [
	<xnet:connector>, <ore:enderpearl>, Dchip, <actuallyadditions:item_crystal_empowered>
]);
recipes.addShaped(<xnet:controller>, [
	[<actuallyadditions:item_misc:7>, Dchip, <actuallyadditions:item_misc:7>], 
	[Rchip, <rftools:machine_frame>, Rchip], 
	[ironI, Gchip, ironI]
]);
recipes.addShaped(<xnet:router>, [
	[<actuallyadditions:item_misc:8>, Dchip, <actuallyadditions:item_misc:8>], 
	[Rchip, <rftools:machine_frame>, Rchip], 
	[ironI, Gchip, ironI]
]);
recipes.addShaped(<xnet:wireless_router>, [
	[<ore:enderpearl>, Qchip, <ore:enderpearl>], 
	[redstoneD, <xnet:router>, redstoneD], 
	[<ore:enderpearl>, redstoneD, <ore:enderpearl>]
]);
recipes.addShaped(<xnet:antenna>, [
	[<ore:barsIron>, Ichip, <ore:barsIron>], 
	[<ore:barsIron>, <immersiveengineering:material:1>, <ore:barsIron>], 
	[null, <ore:stickIron>, null]
]);
recipes.addShaped(<xnet:antenna_dish>, [
	[<ore:plateAluminum>, Dchip, <ore:plateAluminum>], 
	[<ore:plateAluminum>, <minecraft:ender_pearl>, <ore:plateAluminum>], 
	[null, <ore:stickIron>, null]
]);
recipes.addShaped(<thermaldynamics:duct_0> * 6, [
	[<minecraft:redstone>, <buildcraftsilicon:redstone_chipset>, <minecraft:redstone>], 
	[<ore:plateLead>, <buildcrafttransport:pipe_stone_power>, <ore:plateLead>], 
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
]);
recipes.addShaped(<thermaldynamics:duct_0:1> * 6, [
	[<thermaldynamics:duct_0>, <thermaldynamics:duct_0>, <thermaldynamics:duct_0>], 
	[<minecraft:redstone>, <buildcraftsilicon:redstone_chipset:1>, <minecraft:redstone>], 
	[<ore:plateInvar>, null, null]
]);
recipes.addShaped(<thermaldynamics:duct_0:6> * 6, [
	[null, <buildcraftsilicon:redstone_chipset:2>, null], 
	[<thermalfoundation:material:353>, <buildcrafttransport:pipe_gold_power>, <thermalfoundation:material:353>], 
	[null, <thermalfoundation:glass:1>, null]
]);
recipes.addShaped(<thermaldynamics:duct_0:7> * 3, [
	[<thermaldynamics:duct_0:6>, <thermaldynamics:duct_0:6>, <thermaldynamics:duct_0:6>], 
	[<minecraft:redstone>, <buildcraftsilicon:redstone_chipset:3>, <minecraft:redstone>], 
	[<ore:plateSignalum>, null, null]
]);
recipes.addShaped(<thermaldynamics:duct_0:8> *3, [
	[<thermaldynamics:duct_0:7>, <thermaldynamics:duct_0:7>, <thermaldynamics:duct_0:7>], 
	[<minecraft:redstone>, <buildcraftsilicon:redstone_chipset:4>, <minecraft:redstone>], 
	[<ore:plateEnderium>, null, null]
]);
recipes.addShaped(<thermaldynamics:duct_0:3> * 3, [
	[<thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:2>], 
	[<minecraft:redstone>, <buildcraftsilicon:redstone_chipset:3>, <minecraft:redstone>], 
	[<ore:plateSignalum>, null, null]
]);
recipes.addShaped(<thermaldynamics:duct_0:4> * 3, [
	[<thermaldynamics:duct_0:3>, <thermaldynamics:duct_0:3>, <thermaldynamics:duct_0:3>], 
	[<minecraft:redstone>, <buildcraftsilicon:redstone_chipset:4>, <minecraft:redstone>], 
	[<ore:plateEnderium>, null, null]
]);
recipes.addShaped(<thermaldynamics:duct_0:9>, [
	[<ore:plateElectrum>, <ore:blockGlassHardened>, <ore:plateElectrum>], 
	[<ore:blockGlassHardened>, <thermaldynamics:duct_0:4>, <ore:blockGlassHardened>], 
	[<ore:plateElectrum>, <ore:blockGlassHardened>, <ore:plateElectrum>]
]);
recipes.addShaped(<thermaldynamics:duct_16:7>, [
	[<ore:plateBronze>, <ore:blockGlassHardened>, <ore:plateBronze>], 
	[<ore:blockGlassHardened>, <thermaldynamics:duct_16:3>, <ore:blockGlassHardened>], 
	[<ore:plateBronze>, <ore:blockGlassHardened>, <ore:plateBronze>]
]);
recipes.addShaped(<thermaldynamics:duct_16:6> , [
	[<ore:plateBronze>, <ore:blockGlassHardened>, <ore:plateBronze>], 
	[<ore:blockGlassHardened>, <thermaldynamics:duct_16:2>, <ore:blockGlassHardened>], 
	[<ore:plateBronze>, <ore:blockGlassHardened>, <ore:plateBronze>]
]);
recipes.addShapeless(<thermaldynamics:duct_16:4> * 3, [
	<thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <ore:plateSignalum>, <ore:plateElectrum>
]);
recipes.addShapeless(<thermaldynamics:duct_16:5> * 3, [
	<thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <ore:plateSignalum>, <ore:plateElectrum>
]);
recipes.addShaped(<thermaldynamics:duct_16> * 6, [
	[null, <buildcraftsilicon:redstone_chipset>, null], 
	[<ore:plateCopper>, <buildcrafttransport:pipe_stone_fluid>, <ore:plateCopper>]
]);
recipes.addShaped(<thermaldynamics:duct_16:1> * 6, [
	[null, <ore:ingotLead>, null], 
	[<ore:plateCopper>, <buildcrafttransport:pipe_stone_fluid>, <ore:plateCopper>]
]);
recipes.addShaped(<thermaldynamics:duct_16:3> * 6, [
	[null, <ore:ingotLead>, null], 
	[<ore:plateInvar>, <buildcrafttransport:pipe_gold_fluid>, <ore:plateInvar>]
]);
recipes.addShaped(<thermaldynamics:duct_16:2> * 6, [
	[null, <buildcraftsilicon:redstone_chipset:2>, null], 
	[<ore:plateInvar>, <buildcrafttransport:pipe_gold_fluid>, <ore:plateInvar>]
]);
recipes.addShaped(<thermaldynamics:duct_32> * 6, [
	[null, <buildcraftsilicon:redstone_chipset:3>, null], 
	[<ore:plateTin>, <buildcrafttransport:pipe_stone_item>, <ore:plateTin>]
]);
recipes.addShaped(<thermaldynamics:duct_32:1> * 6, [
	[null, <ore:ingotLead>, null], 
	[<ore:plateTin>, <buildcrafttransport:pipe_stone_item>, <ore:plateTin>]
]);
recipes.addShapeless(<thermaldynamics:duct_32:4> * 3, [
	<thermaldynamics:duct_32>, <thermaldynamics:duct_32>, <thermaldynamics:duct_32>, <ore:plateSignalum>, <ore:plateElectrum>
]);
recipes.addShapeless(<thermaldynamics:duct_32:5> * 3, [
	<thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>, <ore:plateSignalum>, <ore:plateElectrum> 
]);
recipes.addShapeless(<thermaldynamics:duct_32:6> * 3, [
	<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:2>, <ore:plateSignalum>, <ore:plateElectrum> 
]);
recipes.addShapeless(<thermaldynamics:duct_32:7> * 3, [
	<thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <ore:plateSignalum>, <ore:plateElectrum>
]);
recipes.addShaped(<thermaldynamics:duct_48> * 4, [
	[null, <buildcrafttransport:plug_blocker>, null], 
	[<buildcrafttransport:plug_blocker>, <ore:ingotLead>, <buildcrafttransport:plug_blocker>], 
	[null, <buildcrafttransport:plug_blocker>, null]
]);
recipes.addShaped(<thermaldynamics:relay> * 2, [
	[<ore:nuggetSignalum>, <ore:gemQuartz>, <ore:nuggetSignalum>], 
	[<ore:plateLead>, <buildcraftsilicon:redstone_chipset:1>, <ore:plateLead>]
]);
recipes.addShaped(<thermaldynamics:retriever:4> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:4>, <ore:nuggetIron>], 
	[<ore:plateEnderium>, <minecraft:ender_eye>, <ore:plateEnderium>]
]);
recipes.addShaped(<thermaldynamics:filter:4> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:4>, <ore:nuggetIron>], 
	[<ore:plateEnderium>, <minecraft:paper>, <ore:plateEnderium>]
]);
recipes.addShaped(<thermaldynamics:servo:4> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:4>, <ore:nuggetIron>], 
	[<ore:plateEnderium>, <minecraft:redstone>, <ore:plateEnderium>]
]);
recipes.addShaped(<thermaldynamics:retriever:3> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:3>, <ore:nuggetIron>], 
	[<ore:plateSignalum>, <minecraft:ender_eye>, <ore:plateSignalum>]
]);
recipes.addShaped(<thermaldynamics:filter:3> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:3>, <ore:nuggetIron>], 
	[<ore:plateSignalum>, <minecraft:paper>, <ore:plateSignalum>]
]);
recipes.addShaped(<thermaldynamics:servo:3> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:3>, <ore:nuggetIron>], 
	[<ore:plateSignalum>, <minecraft:redstone>, <ore:plateSignalum>]
]);
recipes.addShaped(<thermaldynamics:retriever:2> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:2>, <ore:nuggetIron>], 
	[<ore:plateElectrum>, <minecraft:ender_eye>, <ore:plateElectrum>]
]);
recipes.addShaped(<thermaldynamics:filter:2> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:2>, <ore:nuggetIron>], 
	[<ore:plateElectrum>, <minecraft:paper>, <ore:plateElectrum>]
]);
recipes.addShaped(<thermaldynamics:servo:2> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:2>, <ore:nuggetIron>], 
	[<ore:plateElectrum>, <minecraft:redstone>, <ore:plateElectrum>]
]);
recipes.addShaped(<thermaldynamics:retriever:1> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:1>, <ore:nuggetIron>], 
	[<ore:plateInvar>, <minecraft:ender_eye>, <ore:plateInvar>]
]);
recipes.addShaped(<thermaldynamics:filter:1> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:1>, <ore:nuggetIron>], 
	[<ore:plateInvar>, <minecraft:paper>, <ore:plateInvar>]
]);
recipes.addShaped(<thermaldynamics:servo:1> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset:1>, <ore:nuggetIron>], 
	[<ore:plateInvar>, <minecraft:redstone>, <ore:plateInvar>]
]);
recipes.addShaped(<thermaldynamics:retriever> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset>, <ore:nuggetIron>], 
	[<ore:plateIron>, <ore:pearlEnderEye>, <ore:plateIron>]
]);
recipes.addShaped(<thermaldynamics:filter> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset>, <ore:nuggetIron>], 
	[<ore:plateIron>, <ore:paper>, <ore:plateIron>]
]);
recipes.addShaped(<thermaldynamics:servo> * 2, [
	[<ore:nuggetIron>, <buildcraftsilicon:redstone_chipset>, <ore:nuggetIron>], 
	[<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>]
]);
recipes.addShaped(<thermaldynamics:retriever:4>, [
	[<thermaldynamics:retriever:3>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:retriever:4>, [
	[<thermaldynamics:retriever:2>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:retriever:4>, [
	[<thermaldynamics:retriever:1>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:3>]
]);
recipes.addShaped(<thermaldynamics:retriever:4>, [
	[<thermaldynamics:retriever>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:4>]
]);
recipes.addShaped(<thermaldynamics:filter:4>, [[<thermaldynamics:filter:3>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:1>]]);
recipes.addShaped(<thermaldynamics:filter:4>, [
	[<thermaldynamics:filter:2>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:filter:4>, [
	[<thermaldynamics:filter:1>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:3>]
]);
recipes.addShaped(<thermaldynamics:filter:4>, [
	[<thermaldynamics:filter>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:4>]
]);
recipes.addShaped(<thermaldynamics:servo:4>, [
	[<thermaldynamics:servo:3>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:servo:4>, [
	[<thermaldynamics:servo:2>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:servo:4>, [
	[<thermaldynamics:servo:1>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:3>]
]);
recipes.addShaped(<thermaldynamics:servo:4>, [
	[<thermaldynamics:servo>, <thermalfoundation:material:359>, <buildcraftsilicon:redstone_chipset:4>]
]);
recipes.addShaped(<thermaldynamics:retriever:3>, [
	[<thermaldynamics:retriever:2>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:retriever:3>, [
	[<thermaldynamics:retriever:1>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:retriever:3>, [
	[<thermaldynamics:retriever>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:3>]
]);
recipes.addShaped(<thermaldynamics:filter:3>, [
	[<thermaldynamics:filter:2>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:filter:3>, [
	[<thermaldynamics:filter:1>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:filter:3>, [
	[<thermaldynamics:filter>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:3>]
]);
recipes.addShaped(<thermaldynamics:servo:3>, [
	[<thermaldynamics:servo:2>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:servo:3>, [
	[<thermaldynamics:servo:1>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:servo:3>, [
	[<thermaldynamics:servo>, <thermalfoundation:material:357>, <buildcraftsilicon:redstone_chipset:3>]
]);
recipes.addShaped(<thermaldynamics:retriever:2>, [
	[<thermaldynamics:retriever:1>, <thermalfoundation:material:353>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:retriever:2>, [
	[<thermaldynamics:retriever>, <thermalfoundation:material:353>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:filter:2>, [
	[<thermaldynamics:filter:1>, <thermalfoundation:material:353>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:filter:2>, [
	[<thermaldynamics:filter>, <thermalfoundation:material:353>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:servo:2>, [
	[<thermaldynamics:servo:1>, <thermalfoundation:material:353>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:servo:2>, [
	[<thermaldynamics:servo>, <thermalfoundation:material:353>, <buildcraftsilicon:redstone_chipset:2>]
]);
recipes.addShaped(<thermaldynamics:retriever:1>, [
	[<thermaldynamics:retriever>, <thermalfoundation:material:354>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:filter:1>, [
	[<thermaldynamics:filter>, <thermalfoundation:material:354>, <buildcraftsilicon:redstone_chipset:1>]
]);
recipes.addShaped(<thermaldynamics:servo:1>, [
	[<thermaldynamics:servo>, <thermalfoundation:material:354>, <buildcraftsilicon:redstone_chipset:1>]
]);

/* Remove recipes from Circuit Fabricator to be "repaired" */
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:12> * 9);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 3);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<galacticraftcore:basic_item:14>);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<extraplanets:wafer> * 3);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<extraplanets:wafer:2> * 3);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<extraplanets:wafer:1> * 3);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<extraplanets:wafer:3> * 3);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<extraplanets:wafer:4> * 3);
mods.GalacticraftTweaker.removeCircuitFabricatorRecipe(<extraplanets:wafer:5> * 3);

/* Fix Galacticraft Circuit Fabricator to clean up unification and help gate */
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:12> * 9,
	<minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, Rchip, <actuallyadditions:item_crystal:1>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 3,
	<minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, Qchip, <actuallyadditions:item_misc:7>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:14>,
	<minecraft:diamond>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, Qchip, <actuallyadditions:item_misc:8>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:2> * 3,
	<galacticraftplanets:item_basic_asteroids>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, Qchip, <actuallyadditions:item_misc:7>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:3>,
	<extraplanets:tier5_items:8>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, Qchip, <actuallyadditions:item_misc:8>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:4>,
	<extraplanets:tier8_items:6>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, Qchip, <actuallyadditions:item_misc:8>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:5>,
	<extraplanets:tier7_items:7>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>, Qchip, <galacticraftcore:basic_item:13>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:12> * 9,
	<minecraft:diamond>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, Rchip, <actuallyadditions:item_crystal:1>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:13> * 3,
	<minecraft:diamond>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, Qchip, <actuallyadditions:item_misc:7>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<galacticraftcore:basic_item:14>,
	<minecraft:diamond>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, Qchip, <actuallyadditions:item_misc:8>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:2> * 3,
	<galacticraftplanets:item_basic_asteroids>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, Qchip, <actuallyadditions:item_misc:7>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:3>,
	<extraplanets:tier5_items:8>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, Qchip, <actuallyadditions:item_misc:8>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:4>,
	<extraplanets:tier8_items:6>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, Qchip, <actuallyadditions:item_misc:8>
);
mods.GalacticraftTweaker.addCircuitFabricatorRecipe(<extraplanets:wafer:5>,
	<extraplanets:tier7_items:7>, <galacticraftcore:basic_item:2>, <galacticraftcore:basic_item:2>, Qchip, <galacticraftcore:basic_item:13>
);

/* Removes inscriber recipes for gating Tier 2 */
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.removeRecipe(<appliedenergistics2:material:24>);

/* Re-adds inscriber recipes */
Inscriber.addRecipe(<appliedenergistics2:material:22>, 
	Ichip, false, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>
);
Inscriber.addRecipe(<appliedenergistics2:material:23>, 
	Ichip, false, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>
);
Inscriber.addRecipe(<appliedenergistics2:material:24>, 
	Ichip, false, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>
);

/* Extreme Crafting for Viaducts */
ExtremeCrafting.addShaped("Viaduct (untreated)", <thermaldynamics:duct_64:3> * 8, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[null, null, <thermalfoundation:material:355>, null, null, null, <thermalfoundation:material:355>, null, null],
	[null, null, <thermalfoundation:glass:2>, <buildcraftsilicon:plug_gate>, null, <buildcraftsilicon:redstone_chipset:2>, <thermalfoundation:glass:2>, null, null],
	[null, null, <thermalfoundation:material:355>, null, null, null, <thermalfoundation:material:355>, null, null],
	[null, null, <thermalfoundation:glass:2>, <buildcraftsilicon:redstone_chipset:2>, null, <buildcraftsilicon:plug_gate>, <thermalfoundation:glass:2>, null, null],
	[null, null, <thermalfoundation:material:355>, null, null, null, <thermalfoundation:material:355>, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);
ExtremeCrafting.addShaped("Long_Range_Viaduct", <thermaldynamics:duct_64:1> * 8, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null],
	[null, null, <thermalfoundation:material:323>, null, null, null, <thermalfoundation:material:323>, null, null],
	[null, null, <thermalfoundation:glass:2>, <buildcraftsilicon:plug_pulsar>, null, <buildcraftsilicon:redstone_chipset:4>, <thermalfoundation:glass:2>, null, null],
	[null, null, <thermalfoundation:material:323>, null, null, null, <thermalfoundation:material:323>, null, null],
	[null, null, <thermalfoundation:glass:2>, <buildcraftsilicon:redstone_chipset:4>, null, <buildcraftsilicon:plug_pulsar>, <thermalfoundation:glass:2>, null, null],
	[null, null, <thermalfoundation:material:323>, null, null, null, <thermalfoundation:material:323>, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
]);