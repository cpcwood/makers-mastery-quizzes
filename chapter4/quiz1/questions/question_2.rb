# Write a program that adds together all the integers from `1` to
# `250` (inclusive) and `puts`es the total.

a = 1
total = 0
while a < 251
  total += a
  a += 1
end
puts total
