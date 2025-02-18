class Hiker
  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = Hash.new(0)
    @parks_visited = []
  end

  def pack(item, amount)
    if snacks.keys.include?(item)
      snacks[item] = snacks[item] + amount
    else @snacks[item] = amount
    end
  end

  def visit(park)
    @parks_visited << park
  end
end
