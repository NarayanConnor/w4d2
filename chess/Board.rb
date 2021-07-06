#require_relative ""

class Board

    def initialize
        @board=Array.new(8){Array.new(8,"x")}
    end

    def render
        pieces=['castle','knight','bishop']
        @board[1].map! { |box| box='pawn'}
        @board[6].map! { |box| box='pawn'}
        3.times do |i|
            p i
            @board[7][i],@board[7][-(i+1)] = pieces[i],pieces[i]
            @board[0][-(i+1)],@board[0][i] = pieces[i],pieces[i]
        end

        @board[0][3],@board[7][4]= 'king','king'
        @board[0][4],@board[7][3]= 'queen','queen'
        @board
        
    end

    def move_piece(start_pos,end_pos)
    end

end

x= Board.new.render
p x