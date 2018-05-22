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
  end

  # def test_river_has_name
  #   assert_equal("Orinoco", @river.name)
  # end



end
