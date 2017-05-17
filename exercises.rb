# Exercise 0 - Created Arrays and Hashes

# Arrays
fav_colours = ["purple","orange","electric blue","fuscia"]

ages = [41,42,38,36]

coin_tosses = ["heads","heads","tails","heads","tails"]

fav_artists = ["Cindy Sherman", "Fiona Smyth", "William Kuralek"]

fav_colours_symbols = [:purple, :orange, :electric_blue, :fuscia]

# Hashes

words_n_meanings = {:trans => "accross or beyond", :gender => "abstract construct" , :cis => "same"}

fav_movies_n_year_made = {:equus => 1977, :american_pop => 1981, :the_celebration => 1998 , :metropolis => 1927}

cites_population = {:lviv => 728350, :Cairo => 9500000, :iqaluit => 7740}

relations = {:vlad => 41, :stephanie =>42, :larysa => 38, :helena => 36 }

# EXERCISE 1
puts "***EXERCISE ONE***"
# 1
puts coin_tosses.join(", ")
# 2
puts fav_colours[0]
# 3
puts ages.sort.join(", ")
# 4
ages << 0
# 5
puts fav_movies_n_year_made[:equus]

# EXERCISE 2
puts "***EXERCISE TWO***"
# 1
puts fav_colours.last
# 2
cites_population[:mChigeeng] = 897

# 3
coin_tosses.reverse!

# 4
puts cites_population.values[2]

# 5
fav_artists.each {|artist| puts "Eye Spy With My Pretentious Artsy I: #{artist}!"}

# EXERCISE 3

puts "**EXERCISE THREE**"

# 1
puts fav_artists[0..1]

# 2
fav_movies_n_year_made.each do |movie,year|

  puts "#{movie.to_s.tr('_'," ").upcase} released: #{year}"
end

# 3
puts ages.sort!.reverse!

# 4
fav_movies_n_year_made[:beauty_and_the_beast] = [1991,2017]

# EXERCISE 4

puts "***EXERCISE FOUR***"

# 1
ages.each {|age| puts age if age < 40}

# 2
puts "********"
puts ages.max

#  3
puts "********"
puts coin_tosses.count("heads")

# 4
fav_artists.delete("William Kuralek")

# 5

cites_population[:Cairo] = 25


# EXERCISE 5
puts "***EXERCISE 5***"

# 1
sum_total_population = 0
cites_population.each do |city, pop|
    sum_total_population += pop
  end
puts sum_total_population

puts "**"

# ALT version 5.1- shorter code
puts "Alt version of 5.1"
puts cites_population.sum{|city,pop| pop}

puts "*******"

# 2
relations.each do |name,age|
  if age > 40
    puts "#{name.capitalize} is vibrantly aged!"
  else puts "#{name.capitalize} hasn't lived yet!"
  end
end

puts "*******"

# 3
puts fav_colours.last(2)

puts "*******"

# 4
puts ages.map{|age| age += 1}

puts "*******"

# 5
fav_colours.push("aqua","black")

# EXERCISE 6

puts "***EXERCISE SIX***"
# 1
years_of_movies = {1999 => ["The Matrix","Star Wars Episode 1","The Mummy"], 2009 => ["Avatar","Star Trek","District 9"], 2019 => ["
  How to Train Your Dragon 600", "Toy Story 24", "Star Wars:Episode 99"]}

# 2
phn_buttons = [[1,2,3],[4,5,6],[7,8,9],["*",0,"#"]]

# 3
countries = [{name:"Fiji",continent:"Oceania",island:true},{name:"Finland", continent:"Europa", island:false}, {name:"Madagascar", continent:"Africa", island:true}]

# EXERCISE 6 REDUX

puts "***EXERCISE SIX REDUX***"

# 1
20.times {puts "I will not skateboard in the halls!"}

#2
will_not_skateboard = []

20.times do
  will_not_skateboard.push("I will not skateboard in the halls!")
end

# 3
one_to_fifty = (1..50).to_a

# 4
count = 0
one_to_fifty.each{|num| count += num}
puts count

# BUT Why use all that code when you can:
 one_to_fifty.sum

# 5

one_to_fifty = []
(1..50).each do |num|
  3.times{one_to_fifty.push(num)}
end

print one_to_fifty

# 6

puts "*********"

not_islands = []

countries.each do |country|
  if country[:island] == false
    not_islands.push(country)
  end
end
  puts "NOT ISLANDS"
  puts not_islands
  puts "***"
  puts "Original ARRAY"
  puts countries

# EXERCISE 7

puts "***EXERCISE SEVEN***"

# 1

combo_array=fav_colours + fav_artists

print combo_array

puts "********"

# 2

fav_artists.each do |artist|
  ages.each do |age|
    puts " I HEART #{artist} #{age}"
  end
end

# 3
new_ages= ages.map {|age| age += 1 }

puts new_ages

# 4
 puts ages.reduce(:+)

# 5

head_flips = coin_tosses.select{ |flip| flip == "heads" }
puts head_flips
