class Cat
  require_relative '../modules/speak'
  include Speak
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

alfie = Cat.new("Alfie", 10)
ruby = Cat.new("Ruby", 13)