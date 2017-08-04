require_relative 'tile.rb'

class Board
  attr_reader :grid

  def [](pos)
    row, col = pos
  end

  def initialize
    @grid = Array.new(9) { Array.new(9) { Tile.new } }
    @grid.each do |arr|
      arr.each {|space| space = Tile.new}
    end
  end

  def render
    puts "  #{(0..8).to_a.join(" ")}"
    @grid.each_with_index do |row, i|
      print "#{i} "
      row.each do |tile|
        print tile.display + " "
      end
      puts
    end
  end

end
