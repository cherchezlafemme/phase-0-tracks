class Santa
  attr_reader :reindeer_ranking, :ethnicity
  attr_accessor :gender, :age
    
  def initialize (gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!" 
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at (raindeer_name)
    @reindeer_ranking.delete(raindeer_name)
    @reindeer_ranking.push(raindeer_name)
  end

end

=begin DRIVER CODE
santa = Santa.new("female", "Siberian")
santa.speak
santa.eat_milk_and_cookies("chocolate chip cookie")
p santa.age
p santa.celebrate_birthday
p santa.celebrate_birthday
p santa.celebrate_birthday
p santa.ethnicity
santa.get_mad_at("Cupid")
santa.gender = "Only god knows"
p santa.gender
=end

santas = []
genders = ["male", "female", "N/A"]
ethnicities = ["Siberian", "Goblin", "Old style original Santa", "Icelandic Giant", "Born in the mountains", "Weird mix", "Prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#First variant of initializing santa instances
ethnicities.length.times do |i|
  santas << Santa.new(genders[rand(3)], ethnicities[i])
end

#Second variant of initializing santa instances
i = 1
while santas.length < 10
  santas << Santa.new(g = genders[rand(3)], e = ethnicities[rand(9)])
  puts "This is Santa #{i}"
  puts "Gender: #{g}"
  puts "Ethnicity: #{e}"
  i += 1
  santas.length
end 

#Third variant of initializing santa instances
i = 1
5.times do |num| 
  santas << Santa.new(genders[num], ethnicities[num])
  puts "This is Santa #{i}"
i += 1
end

# MILLION SANTA MAKER
number = 0
loop do
santas << Santa.new(genders[rand(genders.length)], ethnicities[rand(ethnicities.length)])
santas[number].age = rand(0...140)
puts "This is Santa № #{number+1}"
puts "Age: #{santas[number].age}"
puts "Ethnicity: #{santas[number].ethnicity}"
puts "Gender: #{santas[number].age}"
puts "Santas friends: #{santas[number].reindeer_ranking.join(", ")}"
puts "-----------------------------------------"
number +=1
break if number == 1000000
end
