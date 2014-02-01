// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

// Find the sum of all the primes below two million.


# def check_p(num)
#   primes_hash = {}
#   (2..(Math.sqrt(num))).each do |n|
#     if num % n == 0 && primes_hash[n] == nil
#       primes_hash[n] ||= 0
#       primes_hash[n] += 1
#     end
#   end
# end
# "require 'pry'
def summation_of_primes(max)
  array_of_nums = (0...max).to_a
  array_of_nums[0] = 0
  array_of_nums[1] = 0
  #skip index 1 as thats number 1 and don't want to add that in later, 0 by default wont be added in
  prod = 0
  array_of_nums.each do |num|
    prod = 0
    next if num == 0
    while prod ** 2 < max
      (2..(max)).each do |mult|
        prod = num * mult
        array_of_nums[prod] = 0
      end
    end
  end

  p array_of_nums.compact.inject(&:+)
end

def seive

end

(2...2000000).to_a.map {|num| true}

summation_of_primes(200)


# require 'prime'
# puts Prime.each(1999999).inject(&:+)