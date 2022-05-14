class Board

  @board


  def initialize
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    display
    clear
  end


  def update(position, symbol)
    @board[(position-1) / 3][(position-1) % 3] = symbol
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


  def clear
    @board = Array.new(3) { Array.new(3, ' ') }
  end

end