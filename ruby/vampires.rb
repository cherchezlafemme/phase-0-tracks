#Release 1: Gather information

puts "What is your name?"
name=gets.chomp
puts "How old are you?"
age=gets.chomp
puts "What year were you born?"
year_born=gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic=gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
insurance=gets.chomp

#Release 2: Adding detection logic


#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if age.to_i == 2016-year_born.to_i && (garlic=="yes" || insurance=="yes")
  puts "Probably not a vampire."
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
elsif age.to_i != 2016 - year_born.to_i && (garlic=="no" || insurance=="no")
  puts "Probably a vampire."
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
elsif age.to_i != 2016 - year_born.to_i && garlic=="no" && insurance=="no"
  puts "Almost certainly a vampire."
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely vampire."
#Otherwise, print “Results inconclusive.”
else puts "Results inconclusive."
end 
#Print the result at the end of the survey.