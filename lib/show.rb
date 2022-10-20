class Show

    attr_accessor :tab

    @tab = []

    def show_board(board)
        @tab = board
        puts " #{@tab[0].signe} | #{@tab[1].signe} | #{@tab[2].signe}"
        puts "-----------"
        puts " #{@tab[3].signe} | #{@tab[4].signe} | #{@tab[5].signe}"
        puts "-----------"
        puts " #{@tab[6].signe} | #{@tab[7].signe} | #{@tab[8].signe}"
    end

end