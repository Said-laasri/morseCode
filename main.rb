def decode_char(char)
  character = { '.-' => 'A',
                '-...' => 'B',
                '-.-.' => 'C',
                '-..' => 'D',
                '.' => 'E',
                '..-.' => 'F',
                '--.' => 'G',
                '....' => 'H',
                '..' => 'I',
                '.---' => 'J',
                '-.-' => 'K',
                '.-..' => 'L',
                '--' => 'M',
                '-.' => 'N',
                '---' => 'O',
                '.--.' => 'P',
                '--.-' => 'Q',
                '.-.' => 'R',
                '...' => 'S',
                '-' => 'T',
                '..-' => 'U',
                '...-' => 'V',
                '.--' => 'W',
                '-..-' => 'X',
                '-.--' => 'Y',
                '--..' => 'Z' }
  character[char]
end

def decode_word(word)
  code = word.split(/ /)
  word = ' '
  code.each do |serial|
    word = "#{word}#{decode_char(serial)}"
  end
  word
end

def decode_intel(string_word)
  message = string_word.split(/ /)
  string = ' '
  message.each do |intel|
    string = "#{string}#{decode_word(intel)}"
  end
  string
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_intel('-- -.--  -. .- -- .')
puts decode_intel('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
