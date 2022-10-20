require "pry"

class Game

    attr_accessor :players, :board, :current_player, :other_player

    def initialize(joueurs, board = Board.new)
        @players = joueurs
        @board = board
        @current_player, @other_player = @players.shuffle
    end

    def turn(playersigne)
        x = 3
        while game_end(x) == false
            puts "C'est ton tour #{@current_player.nom}" if @current_player.signe == playersigne
            puts "C'est ton tour #{@other_player.nom}" if @other_player.signe == playersigne        
            @board.play_turn(playersigne)
            Show.new.show_board(@board.board)
            x = @board.endgame?
            if playersigne == "X"
                playersigne = "O" 
            else
                playersigne = "X"
            end  
        end
        return x
    end

    def game_end(fin)
        return false if fin == 3
        return true
    end
end