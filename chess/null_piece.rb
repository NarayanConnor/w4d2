require_relative "piece"

class Klass<Piece
    include Singleton
    def initialize
        @null_piece = "null"
    end

    def null_piece
        super()
    end

end

