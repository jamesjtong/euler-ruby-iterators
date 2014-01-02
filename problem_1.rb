# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


class SumOfMultiples
  def initialize(max)
    @max = max-1
  end

  def multiples_of_3
    0.step(@max, 3).to_a
  end

  def multiples_of_5
    0.step(@max, 5).to_a
  end

  def multiples_of_15
    0.step(@max, 15).to_a
  end

  def calculate_sum
    multiples_of_3.inject{|sum,n| sum+n} + multiples_of_5.inject{|sum,n| sum+n} - multiples_of_15.inject{|sum,n| sum+n} 
  end
end

x = SumOfMultiples.new(1000).calculate_sum