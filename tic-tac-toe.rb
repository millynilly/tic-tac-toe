#!/usr/bin/env ruby

require_relative 'game.rb'


def play
  game = Game.new

  until game.win? || game.num_moves == 9

    game.get_move
    game.update_board
    game.switch_player

  end

  #game.display_result
  #puts 'Play again?'
  #play if ['y', 'Y'].include?(gets.chomp)
end

play




      

  