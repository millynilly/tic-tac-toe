require_relative 'player.rb'
require_relative 'board.rb'


class Game

  @player1
  @player2
  @board
  @moves

  attr_reader :moves


  def initialize
    print_intro
    @board = Board.new
    @player1 = Player.new('X')
    @player2 = Player.new('O')
    @player = @player1
    @moves = 0
  end


  def get_move
    @moves += 1
    move = @player.make_move
  end


  def switch_player
    @player = @player == @player1 ? @player2 : @player1
  end


  def update_board(position)
    @board.update(position, @player.symbol)
  end


  def win?
    @player.win?
  end
  
  # display_result

  private

  def print_intro
    puts "Tic-tac-toe\n-----------\n"
  end


end