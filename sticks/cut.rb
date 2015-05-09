class Cut

  attr_reader :sticks_cut

  def initialize(nums)
    @nums = nums
    @sticks_cut = nums.length
  end

  def cut
    @sticks_cut = @nums.length

    smallest = delete_smallest

    @nums.map! { |n| n - smallest }
  end

  def delete_smallest
    @nums.delete(@nums.sort.first)
  end
end

cases = gets.to_i
nums = gets.split.map(&:to_i)

cutter = Cut.new(nums)

until cutter.sticks_cut.zero?
  cutter.cut
  puts cutter.sticks_cut unless cutter.sticks_cut.zero?
end
