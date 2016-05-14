#Ask the agent's real name
puts 'What is your name?'
real_name = gets.chomp

#Find the index for a whitespace
whitespace_index=real_name.index(" ")
#Make all downcase

#Break down the name into separate letters, array

#Replace all the vowels to the next vowel in 'aeiou'

#Replace all the consonants to the net one in 'bcdfghjklmnpqrstvwxz'

#Assemble the new name and make it a string: .to_str

#Add the whitespace to the same index as before

#Make first letter upcase and the letter with whitespace index + 1
new_name[0] = new_name[0].upcase!
new_name[whitespace_index+1] = new_name[whitespace_index+1].upcase!

#Print new name of the agent
puts new_name