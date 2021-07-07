require_relative 'slideable'
require_relative "piece"
class Bishop<Piece
    include Slideable


    def symbol
        '♝,♗'
    end

    private

    def move_dirs
        return diagonal
    end
end