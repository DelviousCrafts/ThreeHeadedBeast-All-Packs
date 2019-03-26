import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Attunement;

/* Declare values and variables to make my life easier */
val oreCrystalFluix = <ore:crystalFluix>;
val oreFluixCable = <ore:fluixCable>;
val oreCoveredCable = <ore:coveredCable>;
val oreSmartCable = <ore:smartCable>;
val oreCoveredDCable = <ore:coveredDenseCable>;
val oreSmartDCable = <ore:smartDenseCable>;
var fluixCable = [
	<appliedenergistics2:part:0>, <appliedenergistics2:part:1>, <appliedenergistics2:part:2>, <appliedenergistics2:part:3>, <appliedenergistics2:part:4>, <appliedenergistics2:part:5>, <appliedenergistics2:part:6>, <appliedenergistics2:part:7>, <appliedenergistics2:part:8>, <appliedenergistics2:part:9>, <appliedenergistics2:part:10>, <appliedenergistics2:part:11>, <appliedenergistics2:part:12>, <appliedenergistics2:part:13>, <appliedenergistics2:part:14>, <appliedenergistics2:part:15>, <appliedenergistics2:part:16>
] as IItemStack[];
var coveredCable = [
	<appliedenergistics2:part:20>, <appliedenergistics2:part:21>, <appliedenergistics2:part:22>, <appliedenergistics2:part:23>, <appliedenergistics2:part:24>, <appliedenergistics2:part:25>, <appliedenergistics2:part:26>, <appliedenergistics2:part:27>, <appliedenergistics2:part:28>, <appliedenergistics2:part:29>, <appliedenergistics2:part:30>, <appliedenergistics2:part:31>, <appliedenergistics2:part:32>, <appliedenergistics2:part:33>, <appliedenergistics2:part:34>, <appliedenergistics2:part:35>, <appliedenergistics2:part:36>
]as IItemStack[];
var smartCable = [
	<appliedenergistics2:part:40>, <appliedenergistics2:part:41>, <appliedenergistics2:part:42>, <appliedenergistics2:part:43>, <appliedenergistics2:part:44>, <appliedenergistics2:part:45>, <appliedenergistics2:part:46>, <appliedenergistics2:part:47>, <appliedenergistics2:part:48>, <appliedenergistics2:part:49>, <appliedenergistics2:part:50>, <appliedenergistics2:part:51>, <appliedenergistics2:part:52>, <appliedenergistics2:part:53>, <appliedenergistics2:part:54>, <appliedenergistics2:part:55>, <appliedenergistics2:part:56>
] as IItemStack[];
var denseCoveredCable = [
	<appliedenergistics2:part:500>, <appliedenergistics2:part:501>, <appliedenergistics2:part:502>, <appliedenergistics2:part:503>, <appliedenergistics2:part:504>, <appliedenergistics2:part:505>, <appliedenergistics2:part:506>, <appliedenergistics2:part:507>, <appliedenergistics2:part:508>, <appliedenergistics2:part:509>, <appliedenergistics2:part:510>, <appliedenergistics2:part:511>, <appliedenergistics2:part:512>, <appliedenergistics2:part:513>, <appliedenergistics2:part:514>, <appliedenergistics2:part:515>, <appliedenergistics2:part:516>
] as IItemStack[];
var denseSmartCable = [
	<appliedenergistics2:part:60>, <appliedenergistics2:part:61>, <appliedenergistics2:part:62>, <appliedenergistics2:part:63>, <appliedenergistics2:part:64>, <appliedenergistics2:part:65>, <appliedenergistics2:part:66>, <appliedenergistics2:part:67>, <appliedenergistics2:part:68>,  <appliedenergistics2:part:69>, <appliedenergistics2:part:70>, <appliedenergistics2:part:71>, <appliedenergistics2:part:72>, <appliedenergistics2:part:73>, <appliedenergistics2:part:74>, <appliedenergistics2:part:75>, <appliedenergistics2:part:76>
] as IItemStack[];

var RArray = [  
	<appliedenergistics2:part:76>, 	
	<appliedenergistics2:part:516>, 
	<appliedenergistics2:part:56>, 	
	<appliedenergistics2:part:36>,
	<appliedenergistics2:quantum_ring>,
	<appliedenergistics2:security_station>,
	<appliedenergistics2:spatial_pylon>,
	<appliedenergistics2:spatial_io_port>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:chest>,
	<appliedenergistics2:io_port>,
	<appliedenergistics2:quartz_growth_accelerator>,
	<appliedenergistics2:crafting_unit>,
	<appliedenergistics2:part:80>,
	<ae2stuff:grower>,
	<appliedenergistics2:wireless_access_point>
]as IItemStack[];

/* Add things to ore dictionary to clean up number of recipes. */
oreCrystalFluix.add (<appliedenergistics2:material:12>);
for item in fluixCable {
    oreFluixCable.add (item);
}
for item in coveredCable {
    oreCoveredCable.add (item);
}
for item in smartCable {
    oreSmartCable.add (item);
}
for item in denseCoveredCable {
    oreCoveredDCable.add (item);
}
for item in denseSmartCable {
    oreSmartDCable.add (item);
}

/* removes recipes to make this script work */
for item in RArray {

    recipes.remove(item);
}

/* Re-adds recipes removed */
recipes.addShapeless(<appliedenergistics2:part:36>, [
	<ore:blockWoolWhite>, <ore:fluixCable>
]);
recipes.addShapeless(<appliedenergistics2:part:56>, [
	<ore:coveredCable>, <minecraft:redstone>, <minecraft:glowstone_dust>
]);
recipes.addShapeless(<appliedenergistics2:part:516>, [
	<ore:coveredCable>, <ore:coveredCable>, <ore:coveredCable>, <ore:coveredCable>
]);
recipes.addShapeless(<appliedenergistics2:part:76>, [
	<ore:coveredDenseCable>, <minecraft:redstone>, <minecraft:glowstone_dust>
]);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [
	[<minecraft:iron_ingot>, <appliedenergistics2:material:22>, <minecraft:iron_ingot>], 
	[<appliedenergistics2:material:24>, <appliedenergistics2:energy_cell>, <ore:smartDenseCable>], 
	[<minecraft:iron_ingot>, <appliedenergistics2:material:22>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:security_station>, [
	[<minecraft:iron_ingot>, <appliedenergistics2:chest>, <minecraft:iron_ingot>], 
	[<ore:fluixCable>, <appliedenergistics2:material:37>, <ore:fluixCable>], 
	[<minecraft:iron_ingot>, <appliedenergistics2:material:24>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
	[<appliedenergistics2:quartz_glass>, <ore:fluixCable>, <appliedenergistics2:quartz_glass>], 
	[<ore:dustFluix>, <ore:crystalFluix>, <ore:dustFluix>], 
	[<appliedenergistics2:quartz_glass>, <ore:fluixCable>, <appliedenergistics2:quartz_glass>]
]);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
	[<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>], 
	[<ore:fluixCable>, <ore:crystalFluix>, <ore:fluixCable>], 
	[<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>]
]);
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], 
	[<ore:fluixCable>, <appliedenergistics2:io_port>, <ore:fluixCable>], 
	[<minecraft:iron_ingot>, <appliedenergistics2:material:24>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:drive>, [
	[<minecraft:iron_ingot>, <appliedenergistics2:material:24>, <minecraft:iron_ingot>], 
	[<ore:fluixCable>, null, <ore:fluixCable>], 
	[<minecraft:iron_ingot>, <appliedenergistics2:material:24>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:drive>, [
	[<minecraft:iron_ingot>, <ore:fluixCable>, <minecraft:iron_ingot>], 
	[<appliedenergistics2:material:24>, null, <appliedenergistics2:material:24>], 
	[<minecraft:iron_ingot>, <ore:fluixCable>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:chest>, [
	[<ore:blockGlass>, <appliedenergistics2:part:380>, <ore:blockGlass>], 
	[<ore:fluixCable>, null, <ore:fluixCable>], 
	[<ore:ingotIron>, <ore:crystalFluix>, <ore:ingotIron>]
]);
recipes.addShaped(<appliedenergistics2:io_port>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], 
	[<appliedenergistics2:drive>, <ore:fluixCable>, <appliedenergistics2:drive>], 
	[<minecraft:iron_ingot>, <appliedenergistics2:material:22>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [
	[<minecraft:iron_ingot>, <ore:fluixCable>, <minecraft:iron_ingot>], 
	[<appliedenergistics2:quartz_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>], 
	[<minecraft:iron_ingot>, <ore:fluixCable>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [
	[<minecraft:iron_ingot>, <appliedenergistics2:quartz_glass>, <minecraft:iron_ingot>], 
	[<ore:fluixCable>, <appliedenergistics2:fluix_block>, <ore:fluixCable>], 
	[<minecraft:iron_ingot>, <appliedenergistics2:quartz_glass>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
	[<minecraft:iron_ingot>, <appliedenergistics2:material:23>, <minecraft:iron_ingot>], 
	[<ore:fluixCable>, <appliedenergistics2:material:22>, <ore:fluixCable>], 
	[<minecraft:iron_ingot>, <appliedenergistics2:material:23>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
	[<minecraft:iron_ingot>, <ore:fluixCable>, <minecraft:iron_ingot>], 
	[<appliedenergistics2:material:23>, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>], 
	[<minecraft:iron_ingot>, <ore:fluixCable>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<appliedenergistics2:part:80>, [
	[null, <minecraft:redstone>, null], 
	[<ore:fluixCable>, <minecraft:lever>, <ore:fluixCable>], 
	[null, <minecraft:redstone>, null]
]);
recipes.addShaped(<appliedenergistics2:part:80>, [
	[null, <ore:fluixCable>, null], 
	[<minecraft:redstone>, <minecraft:lever>, <minecraft:redstone>],
	[null, <ore:fluixCable>, null]
]);
recipes.addShaped(<ae2stuff:grower>, [
	[<appliedenergistics2:quartz_growth_accelerator>, <minecraft:hopper>, <appliedenergistics2:quartz_growth_accelerator>], 
	[<appliedenergistics2:quartz_growth_accelerator>, <ore:chest>, <appliedenergistics2:quartz_growth_accelerator>], 
	[<appliedenergistics2:quartz_growth_accelerator>, <ore:fluixCable>, <appliedenergistics2:quartz_growth_accelerator>]
]);
recipes.addShaped(<appliedenergistics2:wireless_access_point>, [
	[<appliedenergistics2:material:41>], 
	[<appliedenergistics2:material:24>], 
	[<ore:fluixCable>]
]);

/* Repairs the broken registration of P2P tunnels*/
Attunement.attuneRF(<extrautils2:powertransmitter>);
Attunement.attuneRF(<extrautils2:grocket:6>);
Attunement.attuneRF(<immersiveengineering:connector>);
Attunement.attuneRF(<cyclicmagic:energy_pipe>);
Attunement.attuneRF(<immersiveengineering:connector:1>);
Attunement.attuneRF(<immersiveengineering:connector:2>);
Attunement.attuneRF(<immersiveengineering:connector:3>);
Attunement.attuneRF(<immersiveengineering:connector:4>);
Attunement.attuneRF(<immersiveengineering:connector:5>);
Attunement.attuneRF(<immersiveengineering:wirecoil>);
Attunement.attuneRF(<immersiveengineering:wirecoil:1>);
Attunement.attuneRF(<immersiveengineering:wirecoil:2>);
Attunement.attuneRF(<immersiveengineering:wirecoil:6>);
Attunement.attuneRF(<immersiveengineering:wirecoil:7>);
Attunement.attuneRF(<cyclicmagic:energy_pump>);
Attunement.attuneRedstone(<immersiveengineering:connector:12>);
Attunement.attuneRedstone(<immersiveengineering:connector:13>);
Attunement.attuneRedstone(<immersiveengineering:wirecoil:5>);
Attunement.attuneItem(<cyclicmagic:item_pump>);
Attunement.attuneItem(<cyclicmagic:item_pipe>);
Attunement.attuneItem(<extrautils2:grocket>);
Attunement.attuneFluid(<cyclicmagic:fluid_pump>);
Attunement.attuneFluid(<cyclicmagic:fluid_pipe>);
Attunement.attuneFluid(<extrautils2:grocket:2>);