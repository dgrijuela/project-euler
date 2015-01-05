# A palindromic number reads the same both ways. The largest palindrome made
#  from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def to_array_of_digits(n)
  n.to_s.split('')
end

def is_palindrome(n)
  n = to_array_of_digits(n)
  return n == n.reverse
end

# This is my initial version but I like the second one more
# i = 999
#
# palindromes = []
# while i > 100
#   999.times do |j|
#     if is_palindrome(i * j)
#       palindromes << i * j
#     end
#     j -= 1
#   end
#   i -= 1
# end
# 
# p palindromes.sort.last

largest_palindrome = 0

i = 100
while i <= 999
  j = i # This halves the time!
  while j <= 999
    if is_palindrome(i * j) && (i * j) > largest_palindrome
      largest_palindrome = i * j
    end
    j += 1
  end
  i += 1
end

p largest_palindrome
