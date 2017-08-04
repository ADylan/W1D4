require_relative 'tile.rb'

class Board

  def initialize
    @grid = Array.new(9) { Array.new(9) }
    @grid.each do |arr|
      arr.each {|space| space = Tile.new}
    end
  end

  
end
