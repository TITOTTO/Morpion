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

puts "Bienvenu dans ce Morpion"
puts "Qui es-tu joueur 1 ?"
p1 = gets.chomp
j1 = Player.new("#{p1}", "X")
puts "Qui es-tu joueur 2 ?"
p2 = gets.chomp
j2 = Player.new("#{p2}", "O")
tab = [j1, j2]
nb = Board.new
ng = Game.new(tab, nb)
puts "Celui qui commencera est : #{ng.current_player.nom}"
final = ng.turn(ng.current_player.signe)
if final == 1
    puts "Féliciation #{j1.nom}, tu l'as éclaté"
elsif final == 2
    puts "Féliciation #{j2.nom}, tu l'as éclaté"
else
    puts "Match nul bande de naze"
end