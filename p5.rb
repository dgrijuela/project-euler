# 2520 is the smallest number that can be divided by each of the numbers
#  from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all
#  of the numbers from 1 to 20?

# 20 implies 10, 5, 4, and 2
# 19 is prime
# 18 implies 9, 6, and 3
# 17 is prime
# 16 implies 8, 4, and 2
# 15 implies 5 and 3
# 14 implies 7 and 2
# 13 is prime
# 12 implies 6 and 2
# 11 is prime
# Interesting:
# - changing the order (prime numbers first) does not result
#    in any perfomance improvement
# - catch and throw is better than just the while with break

target_number = 0
i = 1

catch(:stop) do
  while
    if (i % 19 == 0) && (i % 13 == 0) && (i % 18 == 0) && (i % 17 == 0)\
      && (i % 16 == 0) && (i % 15 == 0) && (i % 14 == 0) && (i % 12 == 0)\
      && (i % 20 == 0) && (i % 11 == 0)
      target_number += i
      throw(:stop)
    else
      i += 1
    end
  end
end

p target_number
