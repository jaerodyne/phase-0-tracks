module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(celebrate)
    "#{celebrate.upcase} I just finished Week 6 of DBC!"
  end
end

Shout.yell_angrily "whoa"
Shout.yelling_happily "omg whaaaaat"