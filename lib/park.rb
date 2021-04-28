class Park
  attr_reader :name,
              :trails,
              :length_trails

  def initialize(name)
    @name = name
    @trails = []
    @length_trails = []
  end

  def add_trail(trail)
    @trails << trail
  end

  def trails_shorter_than(distance)
    @trails.each do |trail|
      if trail.length.to_i < distance
        @length_trails << trail
      end
    end
    return @length_trails
  end
end
