#Wine of France. First list major wine regions = appellation. Then sub-regions if applicable or name of the wine that you see on the bottle. 
#Consider mentioning if wine is white, red, sparkling, dessert, fortified. 
#Then name the grapes.

value = "not filled"
key = "put the key"

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

Burgundy: {key: value},

Champagne: {key: value},

Rhone: {key: value},

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

Provence: {key: value},

Languedoc_Roussillon: {key: value}

}