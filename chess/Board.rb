require_relative "piece"
require_relative "null_piece"

class Board

    attr_reader :board

    def initialize
        @board=Array.new(8) { Array.new(8, NullPiece.instance)}        
    end

    def [](pos)
        board[pos[0]][pos[1]]
    end

    def []=(pos, value)
        board[pos[0]][pos[1]] = value
    end

    def add_piece(piece, pos)
        board[pos] = piece
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

    def move_piece(color, start_pos,end_pos)
        riase if @board[start_pos[0]][start_pos[1]] == NullPiece
        riase if @board[end_pos[0]][end_pos[1]] != NullPiece #if it's our own player
        # not always true
    end

end

x= Board.new.render
p x


