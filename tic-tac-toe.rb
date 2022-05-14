#!/usr/bin/env ruby

require_relative 'game.rb'


def play
  game = Game.new

  until game.end?

    game.get_move(player)
    game.update_board
    game.end?

  end

  game.display_result
  puts 'Play again?'
  play if ['y', 'Y'].include?(gets.chomp)
end

play




      

  