#!/usr/bin/env ruby

require_relative 'game.rb'


def play
  game = Game.new

  #until game.end?

    move = game.get_move
    game.update_board(move)
    #game.end?

 # end

  #game.display_result
  #puts 'Play again?'
  #play if ['y', 'Y'].include?(gets.chomp)
end

play




      

  