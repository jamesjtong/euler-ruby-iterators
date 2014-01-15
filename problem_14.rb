# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

require 'pry'
class Collatz
  attr_accessor :current_iterations_count

  def initialize(max)
    @max = max
    @current_num = 0
    @current_iterations_count = 1
    @longest_chain_times = 1
    @longest_chain_number = 1
  end

  def collatz(num)
    @current_num = num.even? ? num /= 2 : num*3 + 1
  end

  def check_if_longest(num)
    if @current_iterations_count > @longest_chain_times
      @longest_chain_number = num
      @longest_chain_times = @current_iterations_count
    end
  end


  def get_num_of_collatz(num)
    @current_num = num
    @current_iterations_count = 1
    until @current_num == 1
      collatz(@current_num)
      @current_iterations_count += 1
    end
    check_if_longest(num)
  end

  def iterate_through_all_upto
    (1..@max).each do |num|
      get_num_of_collatz(num)
    end
  end
end

x = Collatz.new(1000000)
x.iterate_through_all_upto
binding.pry

