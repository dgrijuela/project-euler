# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

def is_prime(x)
  if x < 2
    return false
  else
    i = 2
    while i < x
      if x % i == 0
        return false
      end
      i += 1
    end
    return true
  end
end

number = 600851475143

i = number - 1
while i > 0
  if (number % i == 0) && is_prime(i)
    p i
    break
  end
  i -= 1
end
