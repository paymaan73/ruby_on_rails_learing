class Dog

  def initialize(hunger_level: 0)
    @hunger_level = hunger_level
  end

  def bark
    'woof'
  end


  def feed
    @hunger_level = 0
  end


  def hungry?
    @hunger_level > 5
  end


  attr_accessor :hunger_level
end
