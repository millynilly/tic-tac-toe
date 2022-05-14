class Board

  @board


  def initialize
    @board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    display
  end


  def update(position, symbol)
    @board[position / 3 - 1 ][(position-1) % 3] = symbol
    display
  end


  def display
    @board.each_with_index do |row, ind|
      row.each_with_index do |col, ind|
        print row[ind]
        print ' | ' unless ind == 2
      end
      puts "\n----------" unless ind == 2
    end
    puts "\n\n"
  end

end