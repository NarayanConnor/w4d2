require_relative 'slideable'
require_relative "piece"
class Rook<Piece
    include Slideable


    def symbol

       ' ♟︎ '

    end

    private

    def move_dirs
        return horizantal
    end
end

x=Rook.new

p x.symbol