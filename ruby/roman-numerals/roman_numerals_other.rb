module RomanNumerals
  NUMERALS = { 1000 => "M",
               900 => "CM",
               500 => "D",
               400 => "CD",
               100 => "C",
               90 => "XC",
               50 => "L",
               40 => "XL",
               10 => "X",
               9 => "IX",
               5 => "V",
               4 => "IV",
               1 => "I",
               0 => ""
              }

  def find_highest(n)
    NUMERALS.find {|(arabic, roman)| n - arabic >= 0}
  end

  def to_roman(n = self)
    arabic, roman = self.find_highest(n)
    if arabic == 0 then
      roman
    else
      roman ++ self.to_roman(n - arabic)
    end
  end
end

class Integer
  include RomanNumerals
end

module BookKeeping
  VERSION = 2
end
