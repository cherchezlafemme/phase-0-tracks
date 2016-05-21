class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do puts "Woof" end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int2)
      puts int2 * 7
  end

  def secret_weapon
    puts "*gives those famous puppy eyes that no one can resist*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

Snoopy = Puppy.new 
Snoopy.fetch('ball')
Meesh = Puppy.new
Meesh.speak(3)
Scoobie = Puppy.new
Scoobie.dog_years(4)
Scoobie.secret_weapon

class Hedgehog

  def initialize
    puts "Initializing new Hedgehog instance ..."
  end

  def run
    puts "*Runs in the wheel and wakes up everyone @ night*"
  end

  def ball
    puts "*Rolls into a ball*"
  end

end

our_hedgehogs = []
instances = 0
  while instances < 50 
    our_hedgehogs = our_hedgehogs.push(Hedgehog.new)
    p our_hedgehogs
    instances += 1
  end


our_hedgehogs.each do |object| 
  object.run 
  object.ball
end

