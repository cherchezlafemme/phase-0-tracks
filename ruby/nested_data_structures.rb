#Wine of France. First list major wine regions = appellation. Then sub-regions if applicable or name of the wine that you see on the bottle. 
#Consider mentioning if wine is white, red, sparkling, dessert, fortified. 
#Then name the grapes.

value = "not filled"
key = "put the key"

wine_of_France = {

Bordeaux: {
  white_wine: value,
  red_wine: value,
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
                }
  },

Alsace:   {white_wine: 
          ["Riesling", "Pinot Blanc", "Gewurztraminer", "Pinot Gris", "Muscat", "Sylvaner"], 
          rose_wine: 
          ["Pinot Noir"]
          },

Provence: {key: value},

Languedoc_Roussillon: {key: value}

}