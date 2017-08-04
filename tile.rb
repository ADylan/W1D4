class Tile
  attr_reader :face_down, :bomb, :display

  DISPLAY_HASH = {
    bomb: "B",
    f_down: "*",
    flag: "F",
    f_up: "n"
  }

  def initialize
    @bomb = gen_bomb?
    @face_down = true
    @display = DISPLAY_HASH[:f_down]
    @display = DISPLAY_HASH[:bomb] if gen_bomb?
  end

  def gen_bomb?
    if rand(10) < 1
      true
    else
      false
    end
  end

end
