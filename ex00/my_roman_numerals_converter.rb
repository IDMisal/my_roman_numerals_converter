def my_roman_numerals_converter(nbr)
    # Define Roman numeral symbols and their corresponding values
    roman_map = {
      1000 => "M",
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
      1 => "I"
    }
  
    roman_numeral = ""
  
    # Iterate through the roman_map to build the Roman numeral
    roman_map.each do |value, numeral|
      while nbr >= value
        roman_numeral += numeral
        nbr -= value
      end
    end
  
    return roman_numeral
  end
  
=begin
  # Test cases
  puts to_roman(14)    # Output: XIV
  puts to_roman(79)    # Output: LXXIX
  puts to_roman(845)   # Output: DCCCXLV
  puts to_roman(2022)  # Output: MMXXII
=end