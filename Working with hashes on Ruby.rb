movies = { "Harry Potter" => 5,
       "Meet Jo Black" => 4.5
   }
   
puts "What would you like to do?"
puts "__Type 'add' to add a movie"
puts "__Type 'update' to update a movie"
puts "__Type 'display' to display all movies"
puts "__Type 'delete' to delete a movie"
choice = gets.chomp.downcase

case choice
when "add"
  puts "Please enter a movie title: "
  title = gets.chomp.downcase.to_sym
  puts "Please rate a movie: "
  rating = gets.chomp.to_i
  if movies[title] == nil
     movies[title]= rating
 else
     puts "We've already have this movie"
 end
 
when "update"
  puts "Please enter a movie title: "
  title = gets.chomp
  if movies[title] == nil
     puts "We don't have this movie"
 else
     puts "Please rate a movie: "
     rating = gets.chomp.to_i
     movies[title.to_sym]= rating
 end
 
when "display"
  movies.each {|movie,rating| puts "#{movie}: #{rating}"}
  
  
when "delete"
  puts "Please enter a movie title: "
  title = gets.chomp
  if movies[title] == nil
     puts "Error!"
 else
     movies.delete(title)
 end
 
else
    puts "Error!"
end