class ServiceLane

  def initialize(lane)
    @lane = lane
  end

  def largest_between(i, j)
    @lane[i..j].sort.first
  end
end

def get
  gets.split.map!(&:to_i)
end

width, test_cases = get
lane = get
service = ServiceLane.new(lane)

test_cases.times do
  i, j = get

  puts service.largest_between(i, j)
end
