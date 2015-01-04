# A palindromic number reads the same both ways. The largest palindrome made
#  from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def to_array_of_digits(n)
  n.to_s.split('')
end

def is_palindrome(n)
  n = to_array_of_digits(n)
  if n == n.reverse
    return true
  else
    return false
  end
end

i = 999

palindromes = []
while i > 100
  999.times do |j|
    if is_palindrome(i * j)
      palindromes << i * j
    end
    j -= 1
  end
  i -= 1
end

p palindromes.sort.last