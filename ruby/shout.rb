=begin Old version, Standalone module
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "Oh wow!" + words + "!" + "This is awesome!!!"
  end

end

#Driver code
Shout.yell_angrily("No! Not again!") #=> "No! Not again!!!! :("
Shout.yelling_happily("Looks like I am almost done") #=> "Oh wow!Looks like I am almost done!This is awesome!!!"
=end

module Shout

 def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    "Oh wow!" + words + "!" + "This is awesome!!!"
  end

end

class Student
  include Shout
end

class Mother
  include Shout
end

mom = Mother.new
mom.yell_angrily("Why you broke this vase?")
mom.yelling_happily("You solved this problem on your own!")
michael = Student.new
michael.yell_angrily("I think I will fail this test")
michael.yelling_happily("You got the tickets to this game?")