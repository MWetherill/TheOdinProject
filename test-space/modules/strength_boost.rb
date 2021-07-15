module StrengthBoost

  def strength_boost
    puts "#{self.name} boost's their stength!" 
    strength_boost = self.strength + 1
    strength_boost = self.strength + strength_boost
    if strength_boost > 10
      strength_boost = 10
    end
    self.health = strength_boost
    puts "str +1 (str: #{strength_boost})"
  end

end