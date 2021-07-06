require_relative "Board"

class Piece

    def initialize(color, board, pos)
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


