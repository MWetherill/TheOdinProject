class Peasant

  require_relative '../modules/speak'
  include Speak

  attr_accessor :name, :age, :health, :strength

  def initialize(name="Default", age=40, health=20, strength=1)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end  

end

olga = Peasant.new("Olga", 33, 12)

puts olga.speak("Being a peasant is rubbish")