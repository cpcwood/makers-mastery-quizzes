# Write a program that:
# * Calculates the "FizzBuzz sequence" from 1 to 20.
#   * For each integer between 1 and 20 (inclusive).
#     * If the number is divisible by 3, replace the number with `Fizz`.
#     * If the number is divisible by 5, replace the number with `Buzz`
#     * If the number is divisible by 3 and 5, replace the number with
#       `FizzBuzz`.
#     * If the number is divisible by neither 3 or 5, keep the number.
# * `puts`es these "FizzBuzz sequence" entries, one per line.

a = 1
while a <= 20
  if a % 3 == 0 && a % 5 == 0
    puts 'FizzBuzz'
  elsif a % 3 == 0
    puts 'Fizz'
  elsif a % 5 == 0
    puts 'Buzz'
  else
    puts a
  end
  a += 1
end
