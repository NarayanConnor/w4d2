module Stepable



    def moves        
        possible_moves = []
        move_dirs.each do |dir|  
            # debugger          
            possible_moves += grow_unblocked_moves_in_dir(*dir)    
        end
        possible_moves
        # debugger 
    end

    def horizantal
        HORIZONTAL_DIRS
    end

    def diagonal
        DIAGONAL_DIRS
    end


    private
    KING_DIRS = [[1, 0],[0, 1],[-1, 0],[0, -1],[1, 1],[1, -1],[-1, 1],[-1, -1]].freeze
    KNIGHT_DIRS = [[-2,-1],[-1,-2],[-1,2],[-2,1],[2,1],[1,2],[2,-1],[1,-2]].freeze

    def move_dirs
        raise "this is move dirs in slide"
    end

    
    def valid_sqr(row, col)
        if (row > 7) || (col > 7) || (row < 0) || (col < 0)
            return -1
        elsif @board[row][col].color == @color
            return -1
        elsif @board[row][col].color == nil
            return 1
        else
            return 0
        end
    end  

end