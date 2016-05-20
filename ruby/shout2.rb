# module Shout
  
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end

#   def self.yelling_happily
#     puts "It's raining men hallelujah!"
#   end

# end

# Shout.yell_angrily 'PARKOUR'
# Shout.yelling_happily

module Shout
  
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily
    puts "SPORTS GO SPORTS!"
  end

end

class Bro
  include Shout
end

class Mascot
  include Shout
end

dude = Bro.new
benny = Mascot.new

dude.yell_angrily "What kind of call was that?!?"
benny.yelling_happily