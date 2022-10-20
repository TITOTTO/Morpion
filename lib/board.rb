require "pry"

require_relative 'boardcase'

class Board < Boardcase

    attr_accessor :board

    def initialize
        @board = []
        for x in "A".."C"
            for y in "1".."3"
                @board << Boardcase.new("#{x + y}", " ")
            end
        end
        @turn = 0
    end

    def play_turn(playersigne)
        puts "Ou jouez-vous ?"
        playerposition = gets.chomp
        @board.each do |x|
            x.signe = playersigne if x.position == playerposition
        end
        @turn += 1
    end

    def endgame?
        return 1 if @board[0].signe == "X" && @board[1].signe == "X" && @board[2].signe == "X" #Ligne 1
        return 1 if @board[3].signe == "X" && @board[4].signe == "X" && @board[5].signe == "X" #Ligne 2
        return 1 if @board[6].signe == "X" && @board[7].signe == "X" && @board[8].signe == "X" #Ligne 3
        return 1 if @board[0].signe == "X" && @board[3].signe == "X" && @board[6].signe == "X" #Col 1
        return 1 if @board[1].signe == "X" && @board[4].signe == "X" && @board[7].signe == "X" #Col 2
        return 1 if @board[2].signe == "X" && @board[5].signe == "X" && @board[8].signe == "X" #Col 3
        return 1 if @board[0].signe == "X" && @board[4].signe == "X" && @board[8].signe == "X" #Diag
        return 1 if @board[2].signe == "X" && @board[4].signe == "X" && @board[6].signe == "X" #Diag
        return 2 if @board[0].signe == "O" && @board[1].signe == "O" && @board[2].signe == "O" #Ligne 1
        return 2 if @board[3].signe == "O" && @board[4].signe == "O" && @board[5].signe == "O" #Ligne 2
        return 2 if @board[6].signe == "O" && @board[7].signe == "O" && @board[8].signe == "O" #Ligne 3
        return 2 if @board[0].signe == "O" && @board[3].signe == "O" && @board[6].signe == "O" #Col 1
        return 2 if @board[1].signe == "O" && @board[4].signe == "O" && @board[7].signe == "O" #Col 2
        return 2 if @board[2].signe == "O" && @board[5].signe == "O" && @board[8].signe == "O" #Col 3
        return 2 if @board[0].signe == "O" && @board[4].signe == "O" && @board[8].signe == "O" #Diag
        return 2 if @board[2].signe == "O" && @board[4].signe == "O" && @board[6].signe == "O" #Diag
        return 0 if @turn == 9
        return 3
    end

    def self.actual # ça me permet juste de voir que j'arrive à créer un tableau de valeur vide
        @board
    end
end