require_relative 'board.rb'

class Minesweeper

  def initialize
    @board = Board.new
  end

  def display
    @board.render
  end

  def run
    display
  end


end

Minesweeper.new.run
