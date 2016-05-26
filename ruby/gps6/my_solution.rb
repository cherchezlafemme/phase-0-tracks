# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It's a build in method that allows you to make another file visible for this file, path to the data is a string.
#
require_relative 'state_data'

class VirusPredictor

#Creates instances with a specific collection of attributes where each instance will
#have different values for those attributes.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Main method that combines the functions of the two methods it consists of: 
#prediction of number of death and prediction of the speed of the spread of virus.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private

#Responsible for calculating the number of deaths based on population_density, population
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    number_of_deaths = if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#Responsible for calculating the speed with which the virus will spread based on population_density
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    speed = if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================
#Pseudocode:
#Create one instance for each of the states from the state data hash
#Apply virus_effects method to each instance

STATE_DATA.each do |state_name, state_data|
state = VirusPredictor.new(state_name, state_data[:population_density], state_data[:population])
state.virus_effects
end

# DRIVER CODE
 # initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One is using a symbol, another is using a string and shows the relationship between key and value with => operator,
as a key for a key-value pair. The use of symbol is justified since these keys are used throughout the hash in multiple places.

What does require_relative do? How is it different from require?
It links the documents together, tells this program about the other document. So that this program can use the code from the other program.
Like here we used the data structure that was present in a different file, and the reason why tis program knew about it was the require_relative method.
It is used in the newer ruby versions and doesn't require a complicated syntax of require method.

What are some ways to iterate through a hash?
.each, .map methods

When refactoring virus_effects, what stood out to you about the variables, if anything?
It was using attributes @, so each instance has their own value of these attributes. 

What concept did you most solidify in this challenge?
Refactoring and private method.

=end