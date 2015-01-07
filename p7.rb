# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
#   we can see that the 6th prime is 13.
#   
#  What is the 10001st prime number?

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

i = 1
counter = 0
catch(:stop) do
  while
    if is_prime(i)
      counter += 1
      if counter == 10001
        p i
        throw(:stop)
      end
      i += 1
    else
      i += 1
    end
  end
end
