#PSEUDOCODE:
=begin 
INPUT: string, user real name
OUTPUT: spy name (modified real name), string
USER INTERACTION: 1.ask the name, 2.assign value to real_name variable, 3.tell user's new spy_name 4. create a loop so that user can do this repeatedly until they type 'quit' and program exits. 5. Print a sentence by iterating through data structure that stores info about real_name and spy_name of the user.
BUSINESS LOGIC:
1. create a method to swap users first and last name
2. create method or code block for replacing vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
3. make main method that will use small ones and give out the expected output. 
Go through each letter in an array by using map! and changing them once it is meeting the condition of if statement
 IF it is a z or !, do b or nothing,
 ELSIF it is vowel apply modify_vowels method,
 ELSIF it is an edge case go to up .next.next
 ELSE move one up .next
 END
5. make first letter upcase and first letter after whitespace also upcase
6. create a data structure and feed the info to it
=end

#BUSINESS LOGIC: Input real_name string, output name string

def split_name (real_name)    
  splited_name = real_name.split
  name = splited_name.last + (" ") + splited_name.first
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
  whitespace_index = name.index(" ")
  name = name.downcase
  name = name.split('')
  name.map! do |letter|
    if letter == "z"
      letter = "b"
    elsif letter == " "
      letter
    elsif letter.match(/[aeiou]/)
      modify_vowels (letter)
    elsif letter.match(/[dhnt]/)
      letter.next.next!
    else letter.next
    end
end
  name
  name[0] = name[0].upcase!
  name[whitespace_index+1] = name[whitespace_index+1].upcase!
  spy_name = name.join
  return spy_name
end

aliases = {}

#USER INTERACTION:
begin puts 'What is your name?'
      real_name = gets.chomp
      spy_creator (real_name)
      
      puts "Your new name is #{spy_creator (real_name)}"
      aliases[real_name] = spy_creator (real_name)
      
      puts "If you want to quit the program, please, type in quit."
      quiting = gets.chomp end until quiting == "quit"

aliases.each {|original_name, spy_name| puts "#{spy_name} is actually #{original_name}" }



