class Board

  @board
  @xos

  attr_reader :board


  def initialize
    @board = [*1..9]
    @xos = Array.new(9, ' ')
    display(@board)
    clear
  end


  def update(position, symbol)
    @board[position - 1] = position
    @xos[position - 1] = symbol
    display(@xos)
  end



  private

  def display(board)

    puts <<-BOARD

    #{board[0]} | #{board[1]} | #{board[2]}
    ---------
    #{board[3]} | #{board[4]} | #{board[5]}
    ---------
    #{board[6]} | #{board[7]} | #{board[8]}

    BOARD
  end


  def clear
    @board = Array.new(9, ' ')
  end

  
end