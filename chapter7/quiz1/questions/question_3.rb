# Write a game where the player swims down a river infested with
# crocodiles.  The game should:
# * Use the `river` variable that defines the river (see code below).
#   * `-`: clear water.
#   * `C`: crocodile.
#   * The first five characters represent the first part of the river.
#     The second five characters represent the second part of the
#     river.  And so on.
# * Define the player as one character wide.
# * Start the player at the central position of the first part of the
#   river.
#   * e.g. `C-P--`.
# * Each turn:
#   * Check to see if the player is in the same position as a
#     crocodile.  If they are, `puts` `You were eaten.' and stop the
#     program.
#   * `puts` the whole river.  Include a `P` where the player is.
#   * Ask the player if they want to go to left, right or neither.
#     The player enters `left`, `right` or `neither`.
#   * Make the player float down the river by one river part (one line
#     of digits).  Move them to the left, the right, or keep them
#     where they are.
# Print `You survived!` if the player makes it past all parts of the
# river without hitting a crocodile.
#
# * Note: To stop the game when the user is eaten or survives the
#   whole river, don't use `exit` to quit the program because this
#   will break the automated tests.  To exit a while loop early, use
#   the `break` keyword.
#
# * Note: You can assume the player will never move outside the
#   boundary of the river when they choose left and right.  You can
#   also assume the player will always enter either `left`, `right` or
#   `neither`.
#
# * Example output:
#   ```
#   --P--
#   --C--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   left
#   -----
#   -PC--
#   CC-CC
#   CC-CC
#   Type left, right or neither
#   right
#   -----
#   --C--
#   CCPCC
#   CC-CC
#   Type left, right or neither
#   neither
#   -----
#   --C--
#   CC-CC
#   CCPCC
#   Type left, right or neither
#   neither
#   You survived!
#   ```

# Create river array
river = "-----,--C--,CC-CC,CC-CC"
river_array = river.split(',')
defined_river = Array.new(4)
4.times { |n| defined_river[n] = river_array[n].split('') }
# Add player location
p_loc = [0, 2]

# Start the game
while true
  # Check if player has made it out alive
  if p_loc[0] == 4 && p_loc[1] == 2
    puts 'You survived!'
    break
  # Check is player is eaten by crocdile
  elsif defined_river[p_loc[0]][p_loc[1]] == 'C'
    puts 'You were eaten.'
    break
  end
  # Print river
  print_river = defined_river.map(&:clone)
  print_river[p_loc[0]][p_loc[1]] = 'P'
  4.times { |n| puts print_river[n].join('') }
  # Move player down river & ask for user input
  p_loc[0] += 1
  puts 'Type left, right or neither'
  input = gets.chomp
  case input
  when 'left'
    p_loc[1] -= 1
  when 'right'
    p_loc[1] += 1
  end
end
