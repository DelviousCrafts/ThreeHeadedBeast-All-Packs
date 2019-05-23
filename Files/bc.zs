import mods.jei.JEI;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

/* Explain all the recipes and items!*/
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