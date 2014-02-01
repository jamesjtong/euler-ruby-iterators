# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#the cheating way=(1..20).inject(:lcm) 

require 'pry'
class EvenlyDivis
  attr_accessor :smallest_mult_of_primes, :current_num
  def initialize(max)
    @max = max
  end

  def is_prime?(num)
    (2..(num-1)).each {|div| num % div == 0? (return false): true}
  end

  def find_smallest_num
    array_of_nums = (1..@max).select {|num| is_prime?(num) }
    @smallest_mult_of_primes=array_of_nums.inject {|sum,num| sum * num}
    @current_num = @smallest_mult_of_primes
    increase_until_true
  end

  def check_true
    (2..20).all? do |num| 
      current_num % num == 0 
    end
  end

  def increase_until_true
    until check_true
      @current_num+=@smallest_mult_of_primes
      check_true
    end
    puts current_num
  end
end

y=EvenlyDivis.new(20).find_smallest_num


#lcm


