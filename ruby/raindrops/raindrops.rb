class Raindrops
    FACTOR_SOUNDS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }
  def self.convert(number)
    complete_sound = FACTOR_SOUNDS.select { |factor, sound| number%factor == 0}.values.join
    complete_sound.empty? ? number.to_s: complete_sound
  end
end

module BookKeeping
  VERSION =3
end
