require "byebug"
module Slideable

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
    HORIZONTAL_DIRS = [[1, 0],[0, 1],[-1, 0],[0, -1]].freeze
    DIAGONAL_DIRS = [[1, 1],[1, -1],[-1, 1],[-1, -1]].freeze

    def move_dirs
        raise "this is move dirs in slide"
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        possible_moves=[]
        pos = self.pos #start pos
        row,col = pos #split up 
        run = true
        while run
            row += dx #1,-1,0  # add the direction to to the pos
            col += dy
            if valid_sqr(row, col) == 1
                possible_moves += [row,col] 
            elsif valid_sqr(row, col) == -1
                run = false
            else
                possible_moves += [row,col]
                run = false
            end
        end 
        possible_moves      
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
