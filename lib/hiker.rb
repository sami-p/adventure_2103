class Hiker
  attr_reader :name,
              :experience_level,
              :snacks

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = {}
  end

  def pack(item, amount)
    @snacks[item] = amount
  end
end
