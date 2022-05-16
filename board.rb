class Board

  @board

  attr_reader :board

  def initialize
    @board = [*1..9]
    display('', false)
    clear
  end


  def update(position, symbol)
    @board[position - 1] = position
    display(symbol)
  end


  def display(symbol, xo=true)
    xos = Array.new(9)

    if xo
      @board.each_with_index do |pos, ind|
        xos[ind] = (pos == ' ') ? ' ' : symbol
      end
    else
      xos = @board
    end

    puts <<-BOARD

    #{xos[0]} | #{xos[1]} | #{xos[2]}
    ---------
    #{xos[3]} | #{xos[4]} | #{xos[5]}
    ---------
    #{xos[6]} | #{xos[7]} | #{xos[8]}

    BOARD
  end


  def clear
    @board = Array.new(9, ' ')
  end


  def win?
    wins = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
      [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
    ]
  end
  
end