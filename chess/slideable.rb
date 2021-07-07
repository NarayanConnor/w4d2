Module Slideable

    def moves
        starting_pos = self.pos
        possible_moves = []
        move_dirs.each do |dir|            
            possible_moves += starting_pos.grow_unblocked_moves_in_dir(*dir)    
        end
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
        possible_moves=[]
        pos=self #start pos
        row,col=pos #split up 

        while true
            row+=dx #1,-1,0  # add the direction to to the pos
            col+=dy
            possible_moves << [row,col] if valid_sqr(row,col)
        end
            
        


        
        #x.color_otherplayer
        #dx+=1,-1,0 dy+=1,-1,0
        #edge of the board
        #kills piece
        #hits our own piece
        #self.postion start
        #

    end
end