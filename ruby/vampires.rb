      # ask the user how many employees will be processed
  puts "How many employees will be processed?"
  employees=gets.chomp
  employees_number=employees.to_i 
      # then begin the survey process for the first employe After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.(Hmm, doing things over and over again ... that certainly sounds like a loop, doesn't it?)
  index=0
  
until  index == employees_number
#Do the method
#Release 1: Gather information
  def vampire_survey
    puts "What is your name?"
    name=gets.chomp
    puts "How old are you?"
    age=gets.chomp
    puts "What year were you born?"
    year_born=gets.chomp
      #Assign the value for right or wrong age
            if  age.to_i==2016-year_born.to_i
            age_detection_passed=true
            else age_detection_failed=true
            end
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
    garlic=gets.chomp
    puts "Would you like to enroll in the company’s health insurance? (yes/no)"
    insurance=gets.chomp
    
                # Allergy detection program
            begin 
        puts "List your allergies, one at a time. Once you are done, type done."
        allergy=gets.chomp
            if allergy=="sunshine"
              allergy_detection_failed=true
            end
        end until allergy=="done" || allergy=="sunshine"



        #If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
    if  allergy_detection_failed
      puts "Probably a vampire."
           #Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
    elsif name === "Drake Cula" || name === "Tu Fang"
        puts "Definitely vampire."
        
    elsif age_detection_passed && (garlic=="yes" || insurance=="yes")
        puts "Probably not a vampire."
          
        #If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
    elsif age_detection_failed && garlic=="no" && insurance=="no"
        puts "Almost certainly a vampire."  
        #If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
    elsif age_detection_failed && (garlic=="no" || insurance=="no")
        puts "Probably a vampire."
      
          #Otherwise, print “Results inconclusive.”
      else puts "Results inconclusive."
    
    end
  
  end
  #Print the result at the end of the survey.
  puts vampire_survey
index+=1

end 

  #Release 5: Plot Twist
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 