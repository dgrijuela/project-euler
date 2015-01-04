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
j = 999
#while i > 100
#  while j > 100
#    if is_palindrome(i * j)
#      p (i * j).to_s + ' (product of ' + i.to_s + ' and ' + j.to_s + ')'
#      do_break = true
#    end
#    break if do_break == true
#    i -= 1
#  end
#  j -= 1
#  break if do_break == true
#end

palindromes = []
while i > 100
  999.times do |j|
    if is_palindrome(i * j)
      #p (i * j).to_s + ' (product of ' + i.to_s + ' and ' + j.to_s + ')'
      palindromes << i
    end
    j -= 1
  end
  i -= 1
end

p palindromes.order.first
