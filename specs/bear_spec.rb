require("minitest/autorun")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Pedroso", "Polar")
  end

  def test_bear_has_name
    assert_equal("Pedroso", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Polar", @bear.type)
  end

end
