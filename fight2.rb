class Player
  attr_accessor :name, :health, :power, :weapon
  def initialize(n, h, pow, wpn)
    @name = n
    @health = h
    @power = pow
    @weapon = wpn
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def wpnhit(opponent)
    opponent.health -= self.weapon
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}, Weapon: #{weapon}"
  end
end
#def wpnfight(p1, p2)
#  while p1.isAlive && p2.isAlive == 1
#    p1.wpnhit(p2)
#    p2.wpnhit(p1)
#end


def fight(p1, p2)
  while p1.isAlive && p2.isAlive
  p1.hit(p2)
  p2.hit(p1)
  p1.wpnhit(p2)
  p2.wpnhit(p1)
  show_info(p1, p2)
end

if p1.isAlive
  puts "#{p1.name} WON!!"
elsif p2.isAlive
  puts "#{p2.name} WON!!"
else
  puts "TIE!!"
end
end

def show_info(*p)
  p.each {|x| puts x}
end

puts = "PLAYER INFO"
p1 = Player.new("David", 1+rand(100), 1+rand(20), 1+rand(10))
p2 = Player.new("Goliath", 1+rand(100), 1+rand(20), 1+rand(10))


show_info(p1, p2)

puts "LETS FIGHT"
fight(p1, p2)
