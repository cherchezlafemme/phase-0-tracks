#Nested data structure that represents a real world Wine of France. Starting with geography, to the wine grapes grown there and wine produced.
#First I listed major wine regions. Then sub-regions if applicable or name of the wine that you see on the bottle. 
#I considered mentioning what kind of wine (white, red, sparkling, dessert, fortified) is produced in this region. 
#Named what grapes grow in this appellation and wine-maker uses to make his wine. 
#I also added some fun information about specific appellations like famous wines they make or how long that bottle will need to age.

wine_of_France = {

Bordeaux: { table_wine:
                    {   Medoc_region: {
                                      sub_regions:
                                                {
                                                Medoc_AC: ["Cabernet Sauvignon", "Cabernet Franc", "Merlot", "Petit verdot", "Malbec"],
                                                Margaux_AC:
                                                          {red_grapes: ["Cabernet Sauvignon", "Cabernet Franc", "Merlot", "Petit verdot"],
                                                            famous_wines: "Château Margaux"},
                                                St_Julien_AC: ["Cabernet Sauvignon", "Cabernet Franc", "Merlot", "Petit verdot"],
                                                Pauillac_AC: 
                                                          {red_grapes: 
                                                                  ["Cabernet Sauvignon", "Cabernet Franc", "Merlot", "Petit verdot", "Malbec"], 
                                                          famous_wines: 
                                                                  ["Château Latour", "Château Lafite-Rothschild", "Château Mouton-Rothschild"]
                                                          },
                                                St_Estephe_AC: ["Cabernet Sauvignon", "Cabernet Franc", "Merlot", "Petit verdot"]
                                                },
                                      ready_to_drink_years: "Incredible aging potential. Can age for decades. Main grape is Cabernet Sauvignon."
                                      },
                        St_Emillion: {red_grapes: ["Merlot", "Cabernet Franc", "Malbec"], 
                                      ready_to_drink_years: "Softer Bordeaux wines, drinkable at the earlier age. Main grape is Merlot."},
                        Pomerol: {red_grapes: ["Merlot", "Cabernet Franc", "Cabernet Sauvignon"], 
                                      ready_to_drink_years: "Rich and lush wines with amazing aging potential that can be compared to the Medoc region. 
                                      Can age up to 40 years. Main grape is Merlot, Cabernet Sauvignon and Cabernet Franc are used only for blending."},
                        Graves: {red_grapes: ["Cabernet Sauvignon", "Cabernet Franc", "Merlot"], 
                                famous_wines: "Château Haut-Brion Pessac"},
                        Pessac_Leognan: {red_grapes: ["Cabernet Sauvignon", "Cabernet Franc", "Merlot"],
                                        white_grapes: ["Sauvignon Blanc", "Semillion", "Muscadelle"]}
                     },
            dessert_wine: {Sauternes: ["Semillion", "Sauvignon Blanc", "Muscadelle"]}
          },

Burgundy: { Chablis: "100% Chardonnay",
            Cote_d_Or: {red_grapes: "Pinot Noir", white_grapes: "Chardonnay"},
            Cote_Chalonnaise: {table_wine:
                                      {red_grapes: "Pinot Noir", 
                                      white_grapes: ["Aligote", "Chardonnay"]},
                              sparkling_wine: "Vins Mousseux that fall under Cremant de Bourgogne AC are quite nice sparkling wines."
                              },
            Macconnais: {red_grapes: ["Gamay", "Pinot Noir"], white_grapes: "Chardonnay"},
            Beaujolais: "Gamay"
          },

Champagne: {sparkling_wine: {red_grapes: ["Pinot Meunier", "Pinot Noir"], white_grapes: "Chardonnay"}},

Rhone: {red_grapes: ["Syrah", "Grenache", "Mourvedre"], white_grapes: ["Marsanne", "Roussanne", "Viognier", "Grenache Blanc"]},

Loire_Valley:
  {white_wine:  {Pouille_Fume: 
                              {white_grapes: "100% Sauvignon Blanc", ready_to_drink_years: [3, 4, 5]},
                Muscadet: 
                              {white_grapes: "100% Melon de Bourgogne", ready_to_drink_years: [1, 2]},
                Sancerre: 
                              {white_grapes: "100% Sauvignon Blanc", ready_to_drink_years: [2, 3]},
                Vouvray: 
                              {white_grapes: "100% Chenin Blanc", ready_to_drink_years: [1, 2, 3]}
                },
  sparkling_wine: "Cremant de Loire AC"},

Alsace:   {white_wine: ["Riesling", "Pinot Blanc", "Gewurztraminer", "Pinot Gris", "Muscat", "Sylvaner"], 
          rose_wine: "Pinot Noir"},

Provence: {rose_wine: "This appellation is famous for it's rose wine.",
          grapes:
                      {red_grapes: 
                      ["Grenache Noir", "Syrah", "Mourvedre", "Carignan", "Cinsault", "Counoise", "Tannat", "Cabernet Sauvignon"], 
                      white_grapes: 
                      ["Rolle or Vermentino", "Ugni Blanc or Trebbiano", "Bourboulenc", "Clairette", "Marsanne", "Roussanne", "Grenache Blanc"]}
          },

Languedoc_Roussillon: {rose_wine: "This appellation produce some rose wine.",
                       grapes:
                            {red_grapes: 
                            ["Grenache", "Carignan", "Cinsault", "Merlot", "Mourvedre", "Cabernet Sauvignon", "Syrah"], 
                            white_grapes: 
                            ["Sauvignon Blanc", "Chardonnay", "Grenache Blanc", "Picpoul Blanc", "Marsanne", "Roussanne", "Viognier", "Mauzac", "Chenin Blanc", "Clairette Blanche"]}
}
}

puts wine_of_France[:Bordeaux][:table_wine][:Medoc_region][:sub_regions][:Pauillac_AC][:famous_wines]
# Will give you the list of famous wines of Bordeaux Medoc appellation 
# => Château Latour Château Lafite-Rothschild Château Mouton-Rothschild

puts wine_of_France[:Alsace][:rose_wine]
# => Pinot Noir

puts wine_of_France[:Burgundy][:Chablis]
# => 100% Chardonnay

puts wine_of_France[:Loire_Valley][:white_wine][:Pouille_Fume][:ready_to_drink_years][0]
# => 3
# 3 years is a minimum number of years after bottling when this wine will be ready to drink

puts wine_of_France[:Bordeaux][:table_wine][:Pomerol][:ready_to_drink_years]
# => Rich and lush wines with amazing aging potential that can be compared to the Medoc region.
# Can age up to 40 years. Main grape is Merlot, Cabernet Sauvignon and Cabernet Franc are used only for blending.

