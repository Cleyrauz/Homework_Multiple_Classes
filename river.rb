class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def lose_fish
  return @fishes.pop()
  end

  def fish_count
    return @fishes.length
  end

end
