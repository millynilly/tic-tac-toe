require_relative 'player.rb'
require_relative 'board.rb'


class Game

  @player
  @board

  def initialize
    print_intro
    @board = Board.new()
    @player = 'X'
  end


  def get_move
    print "Enter a position 1 - 9: "
    
    input = gets.chomp
    until validate(input)
      puts 'Invalid input'
      input = gets.chomp
    end

    #Switch player
    @player == 'x' ? 'O' : 'X'

    input.to_i
  end


  def validate(input)
    return false unless input.to_i.to_s == input
    return false unless input.to_i.between?(1, 9)
    true
  end


  def update_board(position)
    @board.update(position, @player)
  end


  def end?
    false
  end
  
  # display_result

  private

  def print_intro
    puts "Tic-tac-toe
-----------
\n"
  end


end