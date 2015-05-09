require "minitest/autorun"
require "minitest/pride"
require_relative "service_lane"

class ServiceLaneTest < Minitest::Test

  def service_1
    lane = [2, 3, 1, 2, 3, 2, 3, 3]
    ServiceLane.new(lane)
  end

  def test_0_3
    assert_equal 1, service_1.largest_between(0, 3)
  end

  def test_4_6
    assert_equal 2, service_1.largest_between(4, 6)
  end

  def test_6_7
    assert_equal 3, service_1.largest_between(6, 7)
  end

  def test_3_5
    assert_equal 2, service_1.largest_between(3, 5)
  end

  def test_0_7
    assert_equal 1, service_1.largest_between(0, 7)
  end

  def service_2
    lane = [1, 2, 2, 2, 1]
    ServiceLane.new(lane)
  end

  def test_2_3
    assert_equal 2, service_2.largest_between(2, 3)
  end

  def test_1_4
    assert_equal 1, service_2.largest_between(1, 4)
  end

  def test_2_4
    assert_equal 1, service_2.largest_between(1, 4)
  end

  def test_2_4
    assert_equal 1, service_2.largest_between(2, 4)
  end

  def test_2_3
    assert_equal 2, service_2.largest_between(2, 3)
  end
end
