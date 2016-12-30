# Question 1
# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well for this solution?

ages.has_key?("Spot")
ages.key?("Spot")
ages.include?("Spot")


# Question 2
# Add up all of the ages from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.inject(:+)


# Question 3
# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

ages.delete_if {|key, value| value >= 100}


# Question 4
# Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!


# Question 5
# We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)


# Question 6
# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min


# Question 7
# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino") # => false
advice.match("Dino") # => nil

# Question 8
# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

flintstones.index { |x| x.start_with?("Be") } # my solution
flintstones.index { |name| name[0, 2] == "Be" }


# Question 9
# Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |i| i = i[0..2] } # my solution
flintstones.map! do |name|
  name[0, 3]
end


# Question 10
# Again, shorten each of these names to just 3 characters --
# but this time do it all on one line:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] }
