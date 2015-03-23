class Mmind
  private
  attr_reader :code

  public
  def initialize
    @code = ['red', 'orange', 'yellow', 'green', 'blue', 'purple'].shuffle[0..3]
  end

  def make_guess
    guess = gets.chomp.split(',')
    puts "You guessed #{find_total_number_of_matches(guess)} correct," +
    " #{find_number_of_matches_in_correct_positions(guess)} in the correct position"
    if find_number_of_matches_in_correct_positions(guess) == 4
      puts 'You won!'
      exit
    end
  end

  def find_total_number_of_matches(guess)
    total = (guess & @code).count
  end

  def find_number_of_matches_in_correct_positions(guess)
    correct = 0
    guess.each_with_index do |color, index|
      correct += 1 if color == @code[index]
    end
    correct
  end
end
