require_relative 'player.rb'
require_relative 'board.rb'


class Game

  @player = [1, 2]
  @board

  def initialize
    @board = Board.new()
  end


  def get_move(player)
    player[player - 1].make_move
  end


  def update_board(position, symbol)
    @board.update(position, symbol)
  end


  def end?
    false
  end
  
  # display_result

end