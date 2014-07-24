def hexadecimal(hex_string)
  hex_values = {'0'=> 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
                'A' => 10, 'B' => 11, 'C' => 12,
                'D' => 13, 'E' => 14, 'F' => 15}

  hex_digits = (hex_string.upcase.split('')).reverse!

  number = 0
  power = 16

  hex_digits[1..-1].each do |hexadecimal_digit|
    number += hex_values[hexadecimal_digit] * power
    power *= 16
  end

  number + hex_values[hex_digits[0]]
end

