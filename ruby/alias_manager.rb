#PSEUDOCODE:
=begin 
INPUT: string, user real name
OUTPUT: spy name (modified real name), string
USER INTERACTION: 1.ask the name, 2.assign value to real_name variable, 3.tell user's new spy_name 4. create a loop so that user can do this repeatedly until they type 'quit' and program exits. 5. Print a sentence by iterating through data structure that stores info about real_name and spy_name of the user.
BUSINESS LOGIC:
1. swap users first and last name
2. create method or code block for replacing vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
3. create method or code block for consonants to become the next one in alphabet
4. address the edge cases
5. create a data structure and feed the info to it
=end




def spy_name_maker (real_name)
#Input of the method: real name of the agent. 
#Output: new updated spy name, where vowels replaced with next vowel and consonants replaced with next in alphabet consonants. 

      #Swap first and last name
      name = real_name.split
      updated_name = name.last + (" ") + name.first
      updated_name.to_str

      #Find the index for a whitespace
      whitespace_index=updated_name.index(" ")
      
      #Make all downcase
      updated_name = updated_name.downcase

      #Replace all the vowels to the next vowel in 'aeiou'. Using gsup on a string
      updated_name.gsub!(/[aeiou]/, "a" => "e", "e" => "i", "i" => "o", "o"=> "u", "u" => "a") 
      #Vowels are replaced. We have a sting with replaced vowels.

      #Address edge cases d=>f, h=>j, n=>p, t=>v, z=>b
      #make edge cases different
      updated_name.gsub!(/[dhntz]/, "d" => "F", "h" => "J", "n" => "P", "t"=> "V", "z" => "B") 

      #NEW PIECE OF CODE. REPLACED WITH MAP METHOD
      updated_name = updated_name.split('')
      updated_name.select{ |letter| letter =~ /[bcfgjklmpqrsvwxy]/ }.map!{|letter| letter.next!}
      updated_name = updated_name.join('')

      #Make all downcase
      updated_name = updated_name.downcase

      #Make first letter upcase and the letter with whitespace index + 1
      updated_name[0] = updated_name[0].upcase!
      updated_name[whitespace_index+1] = updated_name[whitespace_index+1].upcase!

      #Return name of the agent
      return updated_name

end   

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



