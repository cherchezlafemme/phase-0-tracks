=begin
Class Design
Class: Bottle of wine
Attributes:
  - Vintage
  - Grape
  - Type (table, sparkling, fortified, dessert)
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
attr_accessor :vintage, :grape, :type, :color, :origin, :producer

def initialize(grape, type, color)
  puts "Congratulations! A bottle of delicious wine has been just created for you..."
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

=begin #Driver code
first_bottle = Bottle_of_wine.new("Rielsing", "table", "white")
first_bottle.purpose
first_bottle.vintage = 2012
first_bottle.age #=> This wine has been aged for 4 years.
first_bottle.kiss
first_bottle.work("Oscar Wilde")
first_bottle.compliment("honey roasted trout with green beans")
=end

#USER INTERFACE
puts "Hello there! How many bottles of wine would you like?"
number = gets.chomp.to_i
bottle_count = 0
collection_of_wine = []

loop do
puts "What are the grapes your wine is made of?"
grape = gets.chomp
puts "Please, pick the type of wine: table, sparkling, fortified, dessert."
type = gets.chomp
  if type == ("table" || "sparkling")
    puts "Is it rose, red or white wine?"
    color = gets.chomp
  elsif type == "fortified"
    puts "Looks like you love strong stuff! What is the color of treat? Red, white, something in between?"
    color = gets.chomp
  elsif type == "dessert"
    puts "Yep, you are no different, you also have a sweet tooth! Please, tell us what is the color of your dessert?"
    color = gets.chomp
  else color = "Not sure... will tell you once it is in the glass!"
  end

collection_of_wine << bottle = Bottle_of_wine.new(grape, type, color)  

bottle_count +=1
  if bottle_count == 1
    puts "I hope you are happy! You have #{bottle_count} bottle of wine."
      if bottle_count == number
      else puts "Just hit space to keep going and we will be off to the next bottle! Or type 'done' to exit the program."
        be_done = gets.chomp
      end
    else 
    puts "I hope you are happy! You have #{bottle_count} bottles of wine."
      if bottle_count == number
      else puts "Just hit space to keep going and we will be off to the next bottle! Or type 'done' to exit the program."
         be_done = gets.chomp
      end
  end
  
break if bottle_count == number || be_done == "done"
end 

puts "Do you want to see you wine collection? Type yes if you do!"
see_collection = gets.chomp
  if see_collection == "yes"
    collection_of_wine.each do |bottle|
      puts "This is bottle № #{collection_of_wine.index(bottle) + 1}"
      puts "Vintage: #{bottle.vintage}"
      puts "Grape: #{bottle.grape}"
      puts "Type: #{bottle.type}"
      puts "Color: #{bottle.color}"
      puts "Origin: #{bottle.origin}"
      puts "Producer: #{bottle.producer}"
      puts "Purpose: #{bottle.purpose}"
      puts "-------------------------------------"
    end
  else puts "Thank you for using our app! See you latter."
  end



