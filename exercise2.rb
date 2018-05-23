documentary = "Icarus"
drama = "Gone Girl"
comedy = "Superbad"
dramedy = "Stranger than Fiction"
mockumentary = "This is Spinal Tap"
docudrama = "Hearts of Darkness"
docudramedy = "Birdman"
book = "A BOOK INSTEAD! How about, Harry Potter?"

choice = "incomplete"

puts "\nHey, friend. I want to reccomend you a movie based on your preferances.\n\nOn a scale of 1 to 5, how much do you like Documentaries?\n"


# A loop for each question to verify the input
# Then store the input into a variable
while choice == "incomplete"
  user_documentary = gets.to_i
  if user_documentary <= 5 && user_documentary > 0
    choice = "complete"
  elsif user_documentary <= 5 && user_documentary > 0
    choice = "complete"
  else
    puts "not a valid option"
  end
end

choice = "incomplete"

puts "On a scale of 1 to 5, how much do you like Dramas?"
while choice == "incomplete"
  user_drama = gets.to_i
  if user_drama <= 5 && user_drama > 0
    choice = "complete"
  elsif user_drama <= 5 && user_drama > 0
    choice = "complete"
  else
    puts "not a valid option"
  end
end

choice = "incomplete"

puts "On a scale of 1 to 5, how much do you like Comedies?"
while choice == "incomplete"
  user_comedy = gets.to_i
  if user_comedy <= 5 && user_comedy > 0
    choice = "complete"
  elsif user_comedy <= 5 && user_comedy > 0
    choice = "complete"
  else
    puts "not a valid option"
  end
end

# Display the user's choices
puts "------------------------------"
puts "Your preferances:"
puts "Documentary = #{user_documentary}\nDrama = #{user_drama}\nComedy = #{user_comedy}"
puts "------------------------------"

# Compare the integer values of the user's inputs against one another
# First based on if they scored something above 4
if user_drama >= 4 && user_comedy < 4 && user_documentary < 4
  movie_suggestion = drama
elsif user_drama < 4 && user_comedy >=4 && user_documentary < 4
  movie_suggestion = comedy
elsif user_drama < 4 && user_comedy < 4 && user_documentary >= 4
  movie_suggestion = documentary
elsif user_drama >= 4 && user_comedy >= 4 && user_documentary < 4
  movie_suggestion = dramedy
elsif user_drama < 4 && user_comedy >= 4 && user_documentary >= 4
  movie_suggestion = mockumentary
elsif user_drama >= 4 && user_comedy < 4 && user_documentary >= 4
  movie_suggestion = docudrama
elsif user_drama >= 4 && user_comedy >= 4 && user_documentary >= 4
  movie_suggestion = docudramedy

# If all scores were under 4
elsif user_drama <= 3 && user_comedy <= 3 && user_documentary <= 3
  if user_drama > user_comedy && user_drama > user_documentary
    movie_suggestion = drama
  elsif user_comedy > user_drama && user_comedy > user_documentary
    movie_suggestion = comedy
  elsif user_documentary > user_comedy && user_documentary > user_drama
    movie_suggestion = documentary
  elsif user_documentary == user_comedy && user_documentary != user_drama
    movie_suggestion = mockumentary
  elsif user_documentary == user_drama && user_documentary != user_comedy
    movie_suggestion = mockudrama
  elsif user_drama == user_comedy && user_drama != user_documentary
    movie_suggestion = dramedy
  elsif user_drama == user_comedy && user_drama == user_documentary && user_drama > 2
    movie_suggestion = docudramedy
  else
    movie_suggestion = book
  end
else
    movie_suggestion = book
end

puts "Based on your preferences I would suggest: #{movie_suggestion}"
