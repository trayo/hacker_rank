require "minitest/autorun"
require "minitest/pride"
require_relative "cut"

class CutTest < Minitest::Test

  def test_case_one
    nums = [5, 4, 4, 2, 2, 8]

    cutter = Cut.new(nums)

    assert_equal [3, 2, 2, 6], cutter.cut
    assert_equal 6, cutter.sticks_cut

    assert_equal [1, 4], cutter.cut
    assert_equal 4, cutter.sticks_cut
  end
end
