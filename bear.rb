class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end


end
