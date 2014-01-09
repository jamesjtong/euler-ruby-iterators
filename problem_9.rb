# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
def find_triplet
  (1..999).each do |a|
    (1..999).each do |b|
      (1..999).each do |c|
        if a+b+c==1000 && a**2 + b**2 == c**2 
          return "#{a}, #{b}, #{c}"
        end
      end
    end
  end
end

find_triplet
require 'pry'
binding.pry