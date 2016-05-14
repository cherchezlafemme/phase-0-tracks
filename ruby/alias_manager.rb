#Ask the agent's real name
puts 'What is your name?'
real_name = gets.chomp

def spy_name_maker (real_name)
#Input of the method: real name of the agent. 
#Output: new updated spy name, where vowels replaced with next vowel and consonants replaced with next in alphabet consonants. 

      #Find the index for a whitespace
      whitespace_index=real_name.index(" ")

      #Make all downcase
      real_name = real_name.downcase

      #Break down the name into separate letters, array
      letters = real_name.split("")

              #Replace all the vowels to the next vowel in 'aeiou'

              #Address edge cases d=>f, h=>j, n=>p, t=>v, z=>b

              #Replace all the consonants to the next one in alphabet 'abcdefghijklmnopqrstuvwxyz' by using map! { |letter| letter.next } 
              # except edge cases: d=>f, h=>j, n=>p, t=>v, z=>b

      #Assemble the new name and make it a string
      new_name = letters.join("")
      new_name = new_name.to_str

      #Add the whitespace to the same index as before
      new_name = new_name.insert(whitespace_index, " ")

      #Make first letter upcase and the letter with whitespace index + 1
      new_name[0] = new_name[0].upcase!
      new_name[whitespace_index+1] = new_name[whitespace_index+1].upcase!

      #Print new name of the agent
      puts new_name

end

#Call out the method to run it in the program
