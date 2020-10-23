class Viking

  require_relative '../modules/speak'
  include Speak

  require_relative '../modules/heal'
  include Heal

  require_relative '../modules/strength_boost'
  include StrengthBoost

  attr_accessor :name, :age, :health, :strength

  def initialize(name="Nameless Viking Hero", age=20, health=50, strength=5)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end  

  def damage
    self.strength * rand(1..4)
  end

  def attack(enemy)
    puts "#{self.name} attacks #{enemy.name}!"
    attack_bantz = {1 => "Take that you scoundrel!", 2 => "LE BOOF!", 3 => "Wa-ching! That's the sound of the sword going in."}
    self.speak("#{@name}: " + attack_bantz[rand(1..3)])
    enemy.take_damage(damage)
  end

  def take_damage(damage)
    self.health -= damage
    self.speak("#{@name}: OUCH!")
    puts "#{@name} hp: #{@health}"
    if self.health <= 0
      puts "#{@name} died :("
    end
  end

end

oleg = Viking.new("Oleg", 21, 97, 8)
lars = Viking.new("Lars", 23, 91, 9)


puts oleg.strength
puts lars.strength
puts oleg.strength_boost
puts lars.attack(lars)