require("minitest/autorun")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dori")
    @fish3 = Fish.new("Abelardo")
    @fishes = [@fish1, @fish2, @fish3]
    @river = River.new("Orinoco", @fishes)
    @bear = Bear.new("Yogy", "brown")
  end

  def test_river_has_name
    assert_equal("Orinoco", @river.name)
  end

  def test_river_has_fishes
    assert_equal(@fishes, @river.fishes)
  end

  def test_bear_takes_fish_from_river
    fish =  @river.lose_fish
    @bear.eat_fish(fish)
    assert_equal(1, @bear.stomach.length)
    assert_equal(2, @river.fishes.length)
  end

  def test_fish_count
    assert_equal(3, @river.fish_count)
  end

end
