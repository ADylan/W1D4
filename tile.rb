class Tile
  attr_reader :face_down, :bomb

  def initialize
    @bomb = gen_bomb?
    @face_down = true
  end

  def gen_bomb?
    if rand(10) < 3
      true
    else
      false
    end
  end
end
