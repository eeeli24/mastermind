require_relative 'mmind'

g = Mmind.new

puts "Mastermind\nThere are 4 colors put in certain order. "\
     "Your goal is to decipher that order.\nEach time you make a guess "\
     "you will be told how much colors did you\nguess right, and how many "\
     "of them in the right position.\nYou have 12 tries.\n"\
     "Colors are: red, orange, yellow, green, blue, purple.\n\n"\
     "Make your guess!(input example: yellow,green,red,orange)"

12.times {g.make_guess}
puts "Game over"