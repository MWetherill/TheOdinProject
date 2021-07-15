module Heal

  def heal
    puts "#{self.name} heals!" 
    heal_boost = rand(1..25)
    updated_health = self.health + heal_boost
    if updated_health > 99
      updated_health = 99
    end
    self.health = updated_health
    puts "hp +#{heal_boost} (hp: #{updated_health})"
  end

end