#Release 1: Gather Data on Hamsters of Unknown Origin
puts "What is the hamsters name?"
 hamster_name = gets.chomp
puts "How active (loud during nights) is the hamster? From 1 to 10, 1 being the lightest."
 active_level = gets.chomp
 active_level.to_i
puts "What is the fur color?"
 fur = gets.chomp
puts "Do you think the hamster is good for adoption?"
 adoption = gets.chomp
puts "How old is the hamster?"
age = gets.chomp
  if age.empty?
    age = nil 
  else age.to_i
  end
#Release 3: Print the data
puts "Your hamster name: #{hamster_name};
      How active is the hamster: #{active_level};
      Fur color: #{fur};
      Adoption ready: #{adoption};
      Hamster's age: #{age}."
