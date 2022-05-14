class Board

  @board


  def initialize
    @board = [*1..9]
    display
    clear
  end


  def update(position, symbol)
    @board[position - 1] = symbol
    display
  end


  def display

    puts <<-BOARD

    #{@board[0]} | #{@board[1]} | #{@board[2]}
    -----------
    #{@board[3]} | #{@board[4]} | #{@board[5]}
    -----------
    #{@board[6]} | #{@board[7]} | #{@board[8]}

    BOARD

  end


  def clear
    @board = Array.new(9, ' ')
  end

end