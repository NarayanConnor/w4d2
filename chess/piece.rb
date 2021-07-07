# require_relative "Board"
# require_relative "null_piece"

class Piece

    attr_reader :pos, :color

    def initialize(color=nil, board=nil, pos=nil)
        @color = color
        @pos = pos
        @board = board
    end

    def to_s

    end

    def empty?
        self.empty?
    end

    def valid_moves
        self.moves
    end

    def pos=val

    end

    def Symbol

    end

    def move_into_check?(end_pos)

    end

end


