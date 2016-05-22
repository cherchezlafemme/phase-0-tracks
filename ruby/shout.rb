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