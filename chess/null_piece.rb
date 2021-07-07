require 'singleton'
require_relative "piece"

class NullPiece<Piece
    include Singleton

    attr_reader :color

    def initialize
        @color = nil
        @symbol = nil
    end

    def move
        raise "NP.move not implemented"
    end

    def symbol
        raise "NP.symbol not implemented"
    end

end

