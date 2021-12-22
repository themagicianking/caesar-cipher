def caesar_cipher(string, number)
  alphabet = [ {int: 0, alpha: " "}, {int: 1, alpha: "a"}, {int: 2, alpha: "b"}, {int: 3, alpha: "c"}, {int: 4, alpha: "d"}, {int: 5, alpha: "e"}, {int: 6, alpha: "f"}, {int: 7, alpha: "g"}, {int: 8, alpha: "h"}, {int: 9, alpha: "i"}, {int: 10, alpha: "j"}, {int: 11, alpha: "k"}, {int: 12, alpha: "l"}, {int: 13, alpha: "m"}, {int: 14, alpha: "n"}, {int: 15, alpha: "o"}, {int: 16, alpha: "p"}, {int: 17, alpha: "q"}, {int: 18, alpha: "r"}, {int: 19, alpha: "s"}, {int: 20, alpha: "t"}, {int: 21, alpha: "u"}, {int: 22, alpha: "v"}, {int: 23, alpha: "w"}, {int: 24, alpha: "x"}, {int: 25, alpha: "y"}, {int: 26, alpha: "z"} ]
  string_as_number = []
  converted_number = []
  new_string = []
  x = string.length - 1
  for i in 0..x do
    alphabet.each do |hash|
      if string[i].downcase == hash.dig(:alpha)
        string_as_number.push(hash.dig(:int))
      elsif string[i] == ""
        string_as_number.push(0)
      end
    end
  end
  for i in 0..x do
    if string_as_number[i] == 0
      converted_number.push(0)
    elsif string_as_number[i] + number > 26
      converted_number.push((string_as_number[i] + number) - 26)
    else
      converted_number.push(string_as_number[i] + number)
    end
  end
  for i in 0..x do
    alphabet.filter_map { |letter, data| new_string.push(letter[:alpha]) if letter[:int] == converted_number[i] }
  end
  for i in 0..x do
    if string[i] == string[i].upcase
      new_string[i] = new_string[i].upcase
    end
  end
  puts new_string.join("")
  return new_string.join("")
end