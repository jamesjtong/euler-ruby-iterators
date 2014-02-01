def squares_of_each_then_sum(max)
  (1..max).map do |num|
    num**2
  end.inject(&:+)
end

def sum_of_each_then_square(max)
  (1..max).inject(&:+) ** 2
end

diff = squares_of_each_then_sum(100) - sum_of_each_then_square(100)
puts diff