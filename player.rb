class Player

  @symbol
  @moves

  attr_reader :symbol


  def initialize(symbol)
    @symbol = symbol
    @moves = []
  end
    

  def make_move(board)
    print "Enter a position 1-9: "
    
    input = gets.chomp
    until validate(input, board)
      puts 'Invalid input'
      input = gets.chomp
    end

    @moves << input.to_i

    input.to_i
  end


  def win?
    moves = [0, 1, 4, 8]
    wins = [
      [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7],
      [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]
    ]

    win = wins.any? do |combo|
      combo.all? do |pos|
        @moves.include?(pos)
      end
    end
  end


  private

  def validate(input, board)
    return false unless input.to_i.to_s == input
    return false unless input.to_i.between?(1, 9)
    return false if board.include?(input.to_i)
    true
  end



end