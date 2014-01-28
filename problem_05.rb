# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# (1..20).inject(:lcm)


class EvenlyDivis
  def initialize(max)
    @max = max
  end

  def is_prime?(num)
    num_of_divisors = 0
    (2..num).each do |divisor|
      num_of_divisors += 1 if num % divisor == 0 
    end
    num_of_divisors == 1 
  end

  def find_smallest_num
    array_of_nums = (1..@max).select {|num| is_prime?(num) }
    array_of_nums.inject {|sum,num| sum * num}
  end
end