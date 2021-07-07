Module Slideable

    def move
        move_dirs.each do |ele|
            #new_arr += grow_unblocked_moves_in_dir(*ele) ???
    end


    def horizantal
        HORIZONTAL_DIRS
    end
    def diagonal
        DIAGONAL_DIRS
    end
    private
    HORIZONTAL_DIRS = [[1, 0],[0, 1],[-1, 0],[0, -1]].freeze
    DIAGONAL_DIRS = [[1, 1],[1, -1],[-1, 1],[-1, -1]].freeze

    def move_dirs
        raise "this is move dirs in slide"
    end

    def grow_unblocked_moves_in_dir(dx, dy)
    
        unless @board[dx][dy] == NullPiece
        return @board[dx][dy] == #x.color_otherplayer
        #dx+=1,-1,0 dy+=1,-1,0
        #edge of the board
        #kills piece
        #hits our own piece
        #self.postion start
        #

    end
end