# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.
a = 0
b = 1
loop = 1

while loop <= 20
  if loop == 1
    puts 0
  elsif loop == 2
    puts 1
  else
    c = a + b
    puts c
    a = b
    b = c
  end
  loop += 1
end
