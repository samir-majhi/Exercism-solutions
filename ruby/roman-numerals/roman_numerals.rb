class Fixnum     
  def to_roman
    #for each value in number (and it minus the 1/10th or 1/5th value) divide the number and show the roman_letter, quotient times
    roman_map = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1
    }
    number = self
    roman_representation =""
    skip = 2
    roman_map.each_with_index {|(roman_letter, letter_value), index| 
      number, roman_representation = to_roman_single(roman_letter, letter_value, number, roman_representation)
      number, roman_representation = to_roman_single( roman_map.keys[skip+index] + roman_map.keys[index], roman_map.values[index] - roman_map.values[skip+index], number,roman_representation) unless roman_map.keys[index] == "I"
      skip = 2/skip # to alternate between 1 and 2 coz for 1000 u want 900 but for 500 u want 400 as divisor
    }
    return roman_representation
  end

  def to_roman_single (roman_letter, letter_value, number, roman_representation)
    quotient = number/letter_value 
    roman_representation += roman_letter*quotient
    number = number - (quotient*letter_value)
    return number, roman_representation
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end