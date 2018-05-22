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

  def test_bear_has_empty_estomach
    assert_equal(0, @bear.stomach.length)
  end


  def test_bear_can_roar
    assert_equal("Growl!", @bear.can_roar())
  end

end
