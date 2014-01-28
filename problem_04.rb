# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

class FindLargestPalindrome
  def is_palindrome?(num)
    num.to_s.reverse == num.to_s
  end

  def largest_3_digit_multiple_pal
    @array_of_multiples = []
    (100..999).each do |num|
      (100..999).each do |multipler|
        @array_of_multiples << (num * multipler)
      end
    end
    @array_of_multiples
  end

  def find_largest_pal
    largest_3_digit_multiple_pal
    @array_of_multiples.sort!.reverse!
    @array_of_multiples.each do |num|
      return num if is_palindrome?(num) == true
    end
  end
end

require 'pry'
a = FindLargestPalindrome.new.find_largest_pal
binding.pry