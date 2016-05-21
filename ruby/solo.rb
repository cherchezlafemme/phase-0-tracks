=begin
Class Design
Class: Bottle of wine
Attributes:
  - Vintage
  - Grape
  - Type (table, sparkling, fortified, desert)
  - Color (red, white, rose)
  - Origin
  - Producer
  - Purpose
Methods:
  - Age (how many years it had been aged)
  - Kiss (Gives a sound of a wine kiss when you pop the cork out)
  - Give happiness (Makes the person who is drinking it happy)
  - Compliment the food (takes the food and makes the food you pair it with better)
=end

class Bottle_of_wine
attr_reader :purpose
attr_accessor :vintage, :grapes, :type, :color, :origin, :producer

def initialize(grape, type, color)
  puts "Congratulations! One more bottle of delicious wine has been just created for you..."
  @vintage = 2015
  @grape = grape
  @type = type
  @color = color
  @origin = "A beautiful vineyard with amazing view"
  @producer = "Dionysus... the god of winemaking"
  @purpose = "Bring the friends and strangers together while sharing a glass of tasty wine"
end  

def age
  puts "This wine has been aged for #{2016 - @vintage} years."
end

def kiss
  puts "Shhhhhpop!"
  puts "Sounds like you just opened a bottle of wine... let's pour it, what are you waiting for?"
end

def work(person_name)
  puts "#{"Happy "  + person_name.to_s}"
end

def compliment(food)
  puts "This #{food} tastes way better now!"
end

end  

#Driver code
first_bottle = Bottle_of_wine.new("Rielsing", "table", "white")
first_bottle.purpose
first_bottle.vintage = 2012
first_bottle.age #=> This wine has been aged for 4 years.
first_bottle.kiss
first_bottle.work("Oscar Wilde")
first_bottle.compliment("honey roasted trout with green beans")
