class Trail
  attr_reader :name,
              :length

  def initialize(info)
    @name = info[:name]
    @length = info[:length]
  end
end
