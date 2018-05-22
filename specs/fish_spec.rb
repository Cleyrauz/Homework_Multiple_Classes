require("minitest/autorun")
require_relative("../fish")
require_relative("../bear")
require_relative("../river")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Nemo")
  end

  def test_fish_has_name
    assert_equal("Nemo", @fish.name)
  end

end
