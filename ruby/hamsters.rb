#Release 1: Gather Data on Hamsters of Unknown Origin
puts "What is the hamsters name?"
 hamster = gets.chomp
puts "From 1 to 10, 1 being the lightest, how light of a sleeper are you?"
 sleep = gets.chomp
 sleep.to_i
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

puts