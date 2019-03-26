import mods.jei.JEI;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

/* Declare Values and Variable to make my life easier. */
val paper = <minecraft:paper>;
var LArray = [
	<buildcraftsilicon:plug_lens>,
	<buildcraftsilicon:plug_lens:1>,
	<buildcraftsilicon:plug_lens:2>,
	<buildcraftsilicon:plug_lens:3>,
	<buildcraftsilicon:plug_lens:4>,
	<buildcraftsilicon:plug_lens:5>,
	<buildcraftsilicon:plug_lens:6>,
	<buildcraftsilicon:plug_lens:7>,
	<buildcraftsilicon:plug_lens:8>,
	<buildcraftsilicon:plug_lens:9>,
	<buildcraftsilicon:plug_lens:10>,
	<buildcraftsilicon:plug_lens:11>,
	<buildcraftsilicon:plug_lens:12>,
	<buildcraftsilicon:plug_lens:13>,
	<buildcraftsilicon:plug_lens:14>,
	<buildcraftsilicon:plug_lens:15>,
	<buildcraftsilicon:plug_lens:32>
] as IItemStack[];
var FArray = [
	<buildcraftsilicon:plug_lens:30>,
	<buildcraftsilicon:plug_lens:31>,
	<buildcraftsilicon:plug_lens:29>,
	<buildcraftsilicon:plug_lens:28>,
	<buildcraftsilicon:plug_lens:27>,
	<buildcraftsilicon:plug_lens:26>,
	<buildcraftsilicon:plug_lens:25>,
	<buildcraftsilicon:plug_lens:24>,
	<buildcraftsilicon:plug_lens:23>,
	<buildcraftsilicon:plug_lens:22>,
	<buildcraftsilicon:plug_lens:21>,
	<buildcraftsilicon:plug_lens:20>,
	<buildcraftsilicon:plug_lens:19>,
	<buildcraftsilicon:plug_lens:18>,
	<buildcraftsilicon:plug_lens:17>,
	<buildcraftsilicon:plug_lens:16>,
	<buildcraftsilicon:plug_lens:33>
] as IItemStack[];

/* Add items to ore dictionary to reduce amount of needed recipes. */
for item in LArray{
	<ore:bcLens>.add(item);
}
for item in FArray{
	<ore:bcFilter>.add(item);
}

/* Add Recipes that don't properly exist in the Assembly table yet. */
recipes.addShapeless(<buildcraftsilicon:plug_lens:30>, 
	[<buildcraftsilicon:plug_lens:14>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:31>, 
	[<buildcraftsilicon:plug_lens:15>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:29>, 
	[<buildcraftsilicon:plug_lens:13>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:28>, 
	[<buildcraftsilicon:plug_lens:12>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:27>, 
	[<buildcraftsilicon:plug_lens:11>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:26>, 
	[<buildcraftsilicon:plug_lens:10>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:25>, 
	[<buildcraftsilicon:plug_lens:9>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:24>, 
	[<buildcraftsilicon:plug_lens:8>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:23>, 
	[<buildcraftsilicon:plug_lens:7>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:22>, 
	[<buildcraftsilicon:plug_lens:6>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:21>, 
	[<buildcraftsilicon:plug_lens:5>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:20>, 
	[<buildcraftsilicon:plug_lens:4>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:19>, 
	[<buildcraftsilicon:plug_lens:3>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:18>, 
	[<buildcraftsilicon:plug_lens:2>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:17>, 
	[<buildcraftsilicon:plug_lens:1>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:16>, 
	[<buildcraftsilicon:plug_lens>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:33>, 
	[<buildcraftsilicon:plug_lens:32>, paper]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:14>, 
	[<ore:bcLens>, <ore:dyeOrange>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:15>, 
	[<ore:bcLens>, <ore:dyeWhite>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:13>, 
	[<ore:bcLens>, <ore:dyeMagenta>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:12>, 
	[<ore:bcLens>, <ore:dyeLightBlue>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:11>, 
	[<ore:bcLens>, <ore:dyeYellow>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:10>, 
	[<ore:bcLens>, <ore:dyeLime>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:9>, 
	[<ore:bcLens>, <ore:dyePink>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:8>, 
	[<ore:bcLens>, <ore:dyeGray>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:7>, 
	[<ore:bcLens>, <ore:dye>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:6>, 
	[<ore:bcLens>, <ore:dyeCyan>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:5>, 
	[<ore:bcLens>, <ore:dyePurple>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:4>, 
	[<ore:bcLens>, <ore:dyeBlue>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:3>, 
	[<ore:bcLens>, <ore:dyeBrown>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:2>, 
	[<ore:bcLens>, <ore:dyeGreen>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:1>, 
	[<ore:bcLens>, <ore:dyeRed>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens>, 
	[<ore:bcLens>, <ore:dyeBlack>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:16>, 
	[<ore:bcFilter>, <ore:dyeOrange>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:17>, 
	[<ore:bcFilter>, <ore:dyeWhite>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:18>, 
	[<ore:bcFilter>, <ore:dyeMagenta>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:19>, 
	[<ore:bcFilter>, <ore:dyeLightBlue>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:20>, 
	[<ore:bcFilter>, <ore:dyeYellow>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:21>, 
	[<ore:bcFilter>, <ore:dyeLime>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:22>, 
	[<ore:bcFilter>, <ore:dyePink>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:23>, 
	[<ore:bcFilter>, <ore:dyeGray>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:24>, 
	[<ore:bcFilter>, <ore:dye>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:25>, 
	[<ore:bcFilter>, <ore:dyeCyan>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:26>, 
	[<ore:bcFilter>, <ore:dyePurple>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:27>, 
	[<ore:bcFilter>, <ore:dyeBlue>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:28>, 
	[<ore:bcFilter>, <ore:dyeBrown>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:29>, 
	[<ore:bcFilter>, <ore:dyeGreen>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:30>, 
	[<ore:bcFilter>, <ore:dyeRed>]
);
recipes.addShapeless(<buildcraftsilicon:plug_lens:32>, 
	[<ore:bcFilter>, <ore:dyeBlack>]
);

/* Explain all the recipes! Seriously though, someone needs to make a JEI plug-in */
JEI.addDescription(<buildcraftfactory:heat_exchange>,
	"The heat exchanger heats up and cools off fluids. To get it to function place three Heat Exchanger blocks in a row. You will see a new multi-block form. Pipe fluids to be heated into the bottom left of the structure, and pipe fluids to be cooled into the far right of structure. Heated fluids are then piped out the top right and cooled outputs are piped out the far left. All BC fluids can be heated one tier with lava or a hotter tier BC fluid and cooled one tier with water or a cooler tier BC fluid. Lava and Water will be destroyed upon completion of the process."
);
JEI.addDescription(<buildcraftfactory:distiller>,
	"The Distiller will convert fluids into usable fuels. Pipe fluids to be distilled into the sides of the Distiller or place fluids into it with a bucket. Then pipe power into the sides of the of the Distiller. The Color of the moving parts indicate how fast the process is working going from red for slowest to purple for fastest. The fluids that have been distilled will then be able to be piped from the top of the Distiller for products and bottom of the Distiller for biproducts."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}),
	"Oil can be found throughout the world, or can be crafted using the mechanics of the Heat Exchanger to cool off Hot Oil. It can be run through a distiller to get Cool Gaseous Fuel and Cool Heavy Oil, or be heated up in a Heat Exchanger. It can also be used as a fuel in a Combustion Engine producing 3Mj/T totaling 30,000 Mj/B producing Cool Residue.(Galacticraft oil can be used in place of BC Cool Oil)"
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_heat_1", Amount: 1000}), 
	"Hot oil can be made using the heat mechanics of the Heat Exchanger to heat up Cool Oil or cool down Searing Oil (start with lava) It can be run through the distiller to create Hot Mixed Light Fuels and Hot Dense Oil, or be heated up or cooled off in a Heat Exchanger"
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_heat_2", Amount: 1000}),
	"Searing oil can be made using the mechanics of the Heat Exchanger to heat up Hot Oil. (start with lava) It can be run through the Distiller to create Searing Distilled Oil and Searing Residue, or be heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_residue", Amount: 1000}), 
	"Cool Residue can be made using the  mechanics of the Heat Exchanger to cool down Hot Residue. It is also a byproduct of burning Oil, Heavy Oil, and Dense oil in a Combustion Engine. It can be heated up in a Heat Exchanger or be used to create Water Gelifier."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_residue_heat_1", Amount: 1000}), 
	"Hot Residue can be using the mechanics of the Heat Exchanger to heat up Cool Residue or cool down Searing Residue. It can be heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_residue_heat_2", Amount: 1000}), 
	"Searing Residue is made as a byproduct in the Distiller by distilling Searing Oil, Searing Heavy Oil, or Searing Dense Oil. It can also be made using the mechanics of the Heat Exchanger by heating up Hot Residue. It can be cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_heavy", Amount: 1000}),
	"Cool Heavy Oil is made as a byproduct in a Distiller by distilling Cool Oil. It can also be made using the mechanics of the Heat Exchanger by cooling off Hot Heavy oil. It can be heated up in a Heat Exchanger or be used as a fuel in a Combustion Engine producing 2Mj/T totaling 80,000 Mj/B and producing residue."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_heavy_heat_1", Amount: 1000}),
	"Hot Heavy Oil can be made using the mechanics of the Heat Exchanger by heating up Heavy Oil or cooling off Searing Heavy  Oil. It can be run through a Distiller to create Hot Fuel and Hot Dense Oil. It can also be heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_heavy_heat_2", Amount: 1000}),
	"Searing Heavy Oil can be made using the mechanics of the Heat Exchanger by heating up Hot Heavy Oil. It can be run through a Distiller to create Searing Mixed Heavy Fuels and Searing Residue. It can also be cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_dense", Amount: 1000}),
	"Cool Dense Oil can be made using the mechanics of the Heat Exchanger to cool off Hot Dense Oil. It can heated up in a Heat Exchanger or be used as a fuel in a Combustion Engine producing 4Mj/T totaling 120,000 Mj/B and producing residue."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_dense_heat_1", Amount: 1000}), 
	"Hot Dense Oil can be made as a byproduct in a Distiller by distilling Hot Oil or Hot Heavy Oil. It can also be made using the mechanics of the Heat Exchanger by heating up Hot Dense oil or cooling off Searing Dense Oil. It can be heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_dense_heat_2", Amount: 1000}),
	"Searing Dense Oil can be made using the mechanics of the Heat Exchanger by heating up Hot Dense Oil. It can be run through a Distiller to create Searing Dense Fuel and Searing Residue. It can also be cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_distilled", Amount: 1000}),
	"Cool Distilled Oil can be made using the mechanics of the Heat Exchanger by  cooling down Hot Dense Oil. It can be run through a Distiller to create Cool Gaseous Fuel and Cool Mixed Heavy Fuels. It can also be heated up in a Heat Exchanger or be used as a fuel in a Combustion Engine producing 4Mj/T totaling 120,000 Mj/B."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_distilled_heat_1", Amount: 1000}),
	"Hot Distilled Oil can be made using the mechanics of the Heat Exchanger by heating up Cool Distilled Oil or cooling down Searing Distilled oil. It can be run through a Distiller to create Hot Mixed Light Fuels and Hot Dense Fuel. It can also be heated up in a or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "oil_distilled_heat_2", Amount: 1000}),
	"Searing Distilled Oil can be made as a product in a Distiller by distillng Searing Oil. It can also be made using the mechanics of the Heat Exchanger by heating up Hot Distilled Oil. It can be cooled down in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_dense", Amount: 1000}), 
	"Cool Dense Fuel can be made using the mechanis of the Heat Exchanger by cooling down Hot Dense Fuel. It can be heated up in a Heat Exchanger or be used as fuel in a Combustion Engine producing 4 Mj/T totaling 120,000 Mj/B."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_dense_heat_1", Amount: 1000}),
	"Hot Dense Fuel can be made as a byproduct in a Distiller by distilling Hot Distilled Oil or Hot Mixed Heavy Fuels. It can also be made using the mechanics of a Heat Exchanger by heating up Cool Dense fuel or cooling off Searing Dense Fuel. It can be heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_dense_heat_2", Amount: 1000}),
	"Searing Dense Fuel can be made as a product in a Distiller by distilling Searing Dense Oil. It can also be made using the mechanics of a Heat Exchanger by heating up Hot Dense Fuel. It can be cooled off in a heat exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_mixed_heavy", Amount: 1000}),
	"Cool Mixed Heavy Fuels can be made as a byproduct of in the Distiller by distilling Cool Distilled Oil. It can also be made using the mechanics of the heat exchanger by cooling off Hot Mixed Heavy Fuels. It can be heated up in a Heat Exchanger or be used as a fuel in a Combustion Engine producing 5 Mj/T totaling 48,000 Mj/B."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_mixed_heavy_heat_1", Amount: 1000}),
	"Hot Mixed Heavy Fuels can be made using the mechanics of the Heat Exchanger by heating up Cool Mixed Heavy Fuels or cooling off Searing Mixed Heavy Fuels. It can be run through a Distiller to create Hot Fuel and Hot Dense Fuel. It can also be Heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_mixed_heavy_heat_2", Amount: 1000}),
	"Searing Mixed Heavy Fuels can be made as a product in a Distiller by distilling Searing Heavy Oil. It can also be made using the mechanics of a Heat Exchanger by heating up Hot Mixed Heavy Fuels. It can be cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_light", Amount: 1000}),
	"Cool Fuel can be made as a byproduct in a Distiller by distilling Cool Mixed Light Fuels. It can also be made using the mechanics of a heat exchanger by cooling off Hot Fuel. It can be heated up in a Heat Exchanger or be used as a fuel in a Combustion Engine producing 6 Mj/T totaling 60,000 Mj/B."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_light_heat_1", Amount: 1000}),
	"Hot Fuel can be made as a product in a Distiller by distilling Hot Heavy Oil or Hot Mixed Heavy Fuels. It can also be made using the mechanics of a Heat Exchanger by heating up Cool Fuel or cooling down Searing Fuel. It can be heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_light_heat_2", Amount: 1000}),
	"Searing Fuel can be made using the mechanics of a Heat Exchanger by heating up Hot Fuel. It can be cooled down in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_mixed_light", Amount: 1000}),
	"Cool Mixed Light Fuels can be made using the mechanics of a Heat Exchanger to cool down Hot Mixed Light Fuels. It can be distilled in a Distiller to create Cool Gaseous Fuel and Cool Fuel. It can also be heated up in a Heat Exchanger or be used as a fuel in a Combustion Engine producing 3 Mj/T totaling 24,000 Mj/B."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_mixed_light_heat_1", Amount: 1000}),
	"Hot Mixed Light Fuels can be made as a product in a Distiller by distilling Hot Oil or Hot Distilled Oil. It can also be made using the mechanics of a Heat Exchanger by heating up Cool Mixed Light Fuels. It can heated up or cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_mixed_light_heat_2", Amount: 1000}),
	"Searing Mixed Light Fuels can be made using the mechanics of a Heat Exhanger by heating up Hot Mixed Light Fuels. It can be cooled off in a Heat Exchanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_gaseous", Amount: 1000}),
	"Cool Gaseous Fuel can be made as a product in a Distiller by distilling Cool Oil and Cool Distilled Oil. It can also be created using the mechanics of a Heat Exchanger to cool off Hot Gaseous Fuel. It can be heated up in a Heat Exchanger or used as a fuel in a Combustion Engine producing 8 Mj/T totaling 15,000 Mj/B."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_gaseous_heat_1", Amount: 1000}),
	"Hot Gaseous Fuel can be made using the mechanics of a Heat Exchanger by heating up Cool Gaseous Fuel or cooling off Searing Gaseous Fuel. It can be heated up or cooled off in a Heat Exhanger."
);
JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "fuel_gaseous_heat_2", Amount: 1000}),
	"Searing Gaseous Fuel can be made using the mechanics of a Heat Exchanger by heating up Hot Gaseous Fuel. It can be cooled off in a Heat Exchanger."
);
JEI.addDescription(<buildcraftsilicon:assembly_table>, 
	"The Assembly Table is a tool used to create more complex items used in crafting recipes. It does this through the use of laser cutting the ingredients precicely. Place down the Assembly table, and place at least one Buildcraft Laser with a line of sight to the top of the Assembly table. More Laser's equals faster crafting."
);
JEI.addDescription(<buildcraftsilicon:laser>,
	"The Laser is a mecanic of the Assembly Table and is used to cut material into usable crafting items for more complex machinery. Each laser focused on an Assembly table increases the crafting speed of the item. The end of the Laser must have a line of sight to the Assembly table to assist in the crafting of items."
);
JEI.addDescription(<buildcraftsilicon:redstone_chipset>,
	"The Redstone Chipset is the most basic of chips and is used to make the simplest of upgrades and machenery. It is crafted by placing one piece of redstone into an Assembly table on the left, selecting the redstone chipset on the right, and powering the table with Lasers."
);
JEI.addDescription(<buildcraftsilicon:redstone_chipset:1>, 
	"The Iron Chipset is the seccond tier of chips and is used to make slightly complex upgrades and machenery. It is crafted by placing one piece of redstone and an iron ingot into an Assembly table on the left, selecting the Iron Chipset on the right, and powering the table with Lasers."
);
JEI.addDescription(<buildcraftsilicon:redstone_chipset:2>, 
	"The Golden Chipset is the third tier of chips and is used to make medium grade upgrades and machenery. It is crafted by placing one piece of redstone and a gold ingot into an Assembly table on the left, selecting the Golden Chipset on the right, and powering the table with Lasers."
);
JEI.addDescription(<buildcraftsilicon:redstone_chipset:3>, 
	"The Quartz Chipset is the fourth tier of chips and is used to make more complex upgrades and machenery. It is crafted by placing one piece of redstone and a piece of nether quartz into an Assembly table on the left, selecting the Quartz Chipset on the right, and powering the table with Lasers."
);
JEI.addDescription(<buildcraftsilicon:redstone_chipset:4>,
	"The Diamond Chipset is the fifth and final tier of chips and is used to make the most complex upgrades and machenery. It is crafted by placing one piece of redstone and a diamond into an Assembly table on the left, selecting the Diamond Chipset on the right, and powering the table with Lasers."
);
JEI.addDescription(<buildcrafttransport:wire>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:1>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:2>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:3>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:4>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:5>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:6>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:7>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:8>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:9>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:10>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:11>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:12>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:13>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:14>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wire."
);
JEI.addDescription(<buildcrafttransport:wire:15>, 
	"Pipe Wires allow you to send different colored signals along pipes to assist in the functionality of gates. The wires come in all 16 Minecraft colors and are crafted by placing a dye the color you'd like the wire, and a piece of redstone in the left slots, selecting the colored wire in the right slots and powering the table with lasers. They are then placed on the pipes between the gates. Each pipe can have up to 4 different colored Pipe Wires."
);
JEI.addDescription(<buildcraftsilicon:plug_lens:32>,
	"The Clear Lens will remove any painting that has been done to an item as it has traveled through your pipe network. It can be crafted by placing a piece of glass into the left slots of an Assembly table, selecting the clear lense on the right, and powering the table with lasers."
);
JEI.addDescription(<buildcraftsilicon:plug_lens:33>,
	"The Clear Filter will only allow items to pass through that have not been painted or have been cleared by a Clear Lense."
);
JEI.addDescription(<buildcraftsilicon:plug_lens>,
	"The Lense will 'paint' an item that passes through it the color of the lense. This is helpful with colored filters or "
);