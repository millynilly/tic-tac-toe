require_relative 'player.rb'
require_relative 'board.rb'


class Game

  @player1
  @player2
  @board
  @num_moves
  @move

  attr_reader :num_moves, :board


  def initialize
    print_intro
    @board = Board.new
    @player1 = Player.new('X')
    @player2 = Player.new('O')
    @player = @player2
    @num_moves = 0
  end


  def get_move
    @num_moves += 1
    @move = @player.make_move(@board.board)
  end


  def switch_player
    @player = @player == @player1 ? @player2 : @player1
  end


  def update_board
    @board.update(@move, @player.symbol)
  end


  def win?
    @player.win?
  end
  
  
  def display_result
    puts win? ? "#{@player.symbol} wins." : 'No winner.'
  end



  private

  def print_intro
    puts "\n\nTic-tac-toe\n-----------\n"
  end


end