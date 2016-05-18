#PSEUDOCODE:
=begin 
INPUT: string, user real name
OUTPUT: spy name (modified real name), string
USER INTERACTION: 1.ask the name, 2.assign value to real_name variable, 3.tell user's new spy_name 4. create a loop so that user can do this repeatedly until they type 'quit' and program exits. 5. Print a sentence by iterating through data structure that stores info about real_name and spy_name of the user.
BUSINESS LOGIC:
1. create a method to swap users first and last name
2. create method or code block for replacing vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
3. create method or code block for consonants to become the next one in alphabet
4. address the edge cases
5. create a data structure and feed the info to it
6. make main method that will use small ones and give out the expected output
=end

#Input real_name string, output name string
def split_name (real_name)    
      splited_name = real_name.split
      name = splited_name.last + (" ") + splited_name.first
      name.to_str
end

def modify_vowels (letter)
      vowels = 'aeiou'
      new_vowels = 'eioua'
      place = vowels.index(letter) 
      letter = new_vowels[place]
      letter
end
 
def spy_creator (real_name)
      name = split_name (real_name)
      name = name.downcase
p     name = name.split('') #=>"torres felicia"
      name.map! do |letter|

                        if letter.match(/[aeiou]/)
                        modify_vowels (letter)
                        
                        end
                  end
      p name
end
spy_creator (real_name)




#Initialize a hash for collecting data
aliases = {}

#User interaction:
      #Ask the agent's real name
      begin puts 'What is your name?'
      real_name = gets.chomp

      #Call out the method to run it in the program and print a new spy name
      spy_name_maker (real_name)
      puts "Your new name is #{spy_name_maker (real_name)}"
      aliases[real_name] = spy_name_maker (real_name)

      puts "If you want to quit the program, please, type in quit."
      quiting = gets.chomp end until quiting == "quit"

# Call the hash with all the collected data aliases = {original_name: spy_name}
aliases

#Print the data from the hash
aliases.each {|original_name, spy_name| puts "#{spy_name} is actually #{original_name}" }



