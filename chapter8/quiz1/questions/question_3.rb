# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

sport_hash = {}
fruit_hash = {}

people.each { |person|
  name = person["name"]
  sport = person["sport"]
  fruit = person["fruit"]

  if sport_hash[sport] == nil
    sport_hash[sport] = [name]
  else
    sport_hash[sport].push(name)
  end

  if fruit_hash[fruit] == nil
    fruit_hash[fruit] = [name]
  else
    fruit_hash[fruit].push(name)
  end
}

puts "Enter what category to search"
value = gets.chomp

if value == 'sport'
  sport_hash.each { |sport, persons|
    puts sport
    puts persons
  }
elsif value == 'fruit'
  fruit_hash.each { |fruit, persons|
    puts fruit
    puts persons
  }
end
