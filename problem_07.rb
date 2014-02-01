# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'pry'
class HighPrime
  attr_accessor :len, :starting_num, :tested_true
  def initialize(len)
    @len = len
    @tested_true = 0
    @starting_num = 2
  end

  def is_prime?(num)
    (2..(num-1)).each {|div| num % div == 0? (return false): true}
  end

  def iteratez
    until self.tested_true == len
      (self.tested_true += 1) if is_prime?(self.starting_num)

      self.starting_num+=1
    end
    return self.starting_num
  end
end

puts HighPrime.new(10001).iteratez
