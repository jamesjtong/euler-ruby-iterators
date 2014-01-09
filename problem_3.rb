# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
def prime_factors(n)
return [] if n == 1
factor = (2..n).find {|x| n % x == 0}
[factor] + prime_factors(n / factor)
end
puts prime_factors(600851475143).max



# class LargePrime
#   def initialize(max)
#     @max = max
#     @factor_num = 2
#     @array_of_primes = []
#     @current_divider = 0
#   end

#   def find_largest
#     @array_of_primes
#   end

#   def is_prime?(num)
#     count = 0
#     (2..num).each do |factor|
#       count += 1 if num % factor == 0
#     end
#     count == 1
#   end

#   def iterate_to_find_largest
#     until is_prime?(@factor_num) && @factor_num > 2 
#       until @max % @factor_num == 0
#         @factor_num += 1 
#       end
#       @array_of_primes << @factor_num
#       @current_divider = @max/@factor_num
#       @array_of_primes << @current_divider
#       @factor_num = @current_divider
#     end
#     find_largest
#   end
# end

# a = LargePrime.new(14)
require 'pry'
binding.pry