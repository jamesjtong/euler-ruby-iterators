# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.
# Input: an integer n > 1
 
# Let A be an array of Boolean values, indexed by integers 2 to n,
# initially all set to true.
 
#  for i = 2, 3, 4, ..., not exceeding √n:
#   if A[i] is true:
#     for j = i2, i2+i, i2+2i, ..., not exceeding n :
#       A[j] := false


# cheap solution
# require 'prime'
# puts Prime.each(1999999).inject(&:+)

# Sieve of E solution
class JamesSieve
  def initialize(top)
    @top = top
    @topsquared = (top ** (0.5)).floor
    @array_of_nums=(2..top).to_a
  end


  def cross_off
    (0..(@array_of_nums.index(@topsquared))).each do |i|
      n = @array_of_nums[i]
      (i + n).step((@top-1),n) {|mult| @array_of_nums[mult] = nil} unless n.nil?
    end
    p @array_of_nums.compact.inject(&:+)
  end
end

puts JamesSieve.new(2000000).cross_off
# 142913828922


