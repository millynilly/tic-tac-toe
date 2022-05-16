#!/usr/bin/env ruby

require_relative 'game.rb'


def play
  game = Game.new

  until game.win? || game.num_moves == 9
    
    game.switch_player
    game.get_move
    game.update_board

  end

  game.display_result
  puts 'Play again?'
  play if ['y', 'Y'].include?(gets.chomp)
  
end

play
