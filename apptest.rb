$:.unshift File.expand_path("./../lib", __FILE__)

require 'bundler' 
Bundler.require 
require 'pry'
require 'rubygems'

require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/show'


j1 = Player.new("Franck", "X")
j2 = Player.new("Eric", "O")
tab = [j1, j2]
nb = Board.new
ng = Game.new(tab, nb)
Show.new.show_board(nb.board)
binding.pry