# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(celebrate)
#     "#{celebrate.upcase} I just finished Week 6 of DBC!"
#   end
# end

# Shout.yell_angrily "whoa"
# Shout.yelling_happily "omg whaaaaat"

module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(celebrate)
    puts "#{celebrate.upcase} I just finished Week 6 of DBC!"
  end

end

class Elvis
  include Shout
end

class Voters
  include Shout
end

dance = Elvis.new
dance.yelling_happily("You know you make me wanna shout!")

disgruntled = Voters.new
disgruntled.yell_angrily("THIS ELECTION THO")

