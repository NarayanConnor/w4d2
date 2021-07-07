require_relative 'slideable'
require_relative "piece"

class Queen<Piece
    include Slideable

    def symbol
        '♛,♕'
    end

    private
    def move_dirs
        return diagonal + horizantal
    end
end