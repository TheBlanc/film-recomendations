documentary = "Icarus"
drama = "Gone Girl"
comedy = "Superbad"
dramedy = "Stranger than Fiction"
mockumentary = "This is Spinal Tap"
docudrama = "Hearts of Darkness"
docudramedy = "Birdman"
book = "A book instead! How about, Harry Potter?"

choice = "incomplete"

puts "\nHey, friend. I want to reccomend you a movie based on your preferances.\n\nDo you like Documentaries?\n(yes or no)"

while choice == "incomplete"
  user_documentary = gets.chomp.upcase
  if user_documentary == "YES"
    choice = "complete"
  elsif user_documentary == "NO"
    choice = "complete"
  else
    puts "not a valid option"
  end
end

choice = "incomplete"

puts "Do you like Dramas?\n(yes or no)"
while choice == "incomplete"
  user_drama = gets.chomp.upcase
  if user_drama == "YES"
    choice = "complete"
  elsif user_drama == "NO"
    choice = "complete"
  else
    puts "not a valid option"
  end
end

choice = "incomplete"

puts "Do you like Comedies?\n(yes or no)"
while choice == "incomplete"
  user_comedy = gets.chomp.upcase
  if user_comedy == "YES"
    choice = "complete"
  elsif user_comedy == "NO"
    choice = "complete"
  else
    puts "not a valid option"
  end
end

puts "------------------------------"
puts "Your preferances:"
puts "Documentary = #{user_documentary}\nDrama = #{user_drama}\nComedy = #{user_comedy}"
puts "------------------------------"

if user_drama == "YES" && user_comedy == "NO" && user_documentary == "NO"
  movie_suggection = drama
elsif user_drama == "NO" && user_comedy == "YES" && user_documentary == "NO"
  movie_suggection = comedy
elsif user_drama == "NO" && user_comedy == "NO" && user_documentary == "YES"
  movie_suggection = documentary
elsif user_drama == "YES" && user_comedy == "YES" && user_documentary == "NO"
  movie_suggection = dramedy
elsif user_drama == "NO" && user_comedy == "YES" && user_documentary == "YES"
  movie_suggection = mockumentary
elsif user_drama == "YES" && user_comedy == "NO" && user_documentary == "YES"
  movie_suggection = docudrama
elsif user_drama == "YES" && user_comedy == "YES" && user_documentary == "YES"
  movie_suggection = docudramedy
else
    movie_suggection = book
end

puts "Based on your preferences I would suggest #{movie_suggection}"
