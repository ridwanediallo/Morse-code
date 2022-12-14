def decode_char(code)
  symbols = {
    '.-': 'A',
    '-...': 'B',
    '-.-.': 'C',
    '-..': 'D',
    '.': 'E',
    '..-.': 'F',
    '--.': 'G',
    '....': 'H',
    '..': 'I',
    '.---': 'J',
    '-.-': 'K',
    '.-..': 'L',
    '--': 'M',
    '-.': 'N',
    '---': 'O',
    '.--.': 'P',
    '--.-': 'Q',
    '.-.': 'R',
    '...': 'S',
    '-': 'T',
    '..-': 'U',
    '...-': 'V',
    '.--': 'W',
    '-..-': 'X',
    '-.--': 'Y',
    '--..': 'Z',
    '.----': '1',
    '..---': '2',
    '...--': '3',
    '....-': '4',
    '.....': '5',
    '-....': '6',
    '--...': '7',
    '---..': '8',
    '----.': '9',
    '-----': '0'
  }

  symbols[code.to_sym]
end

def decode_word(ciphered)
  word = ''
  ciphered.split(' ').each do |code|
    word += decode_char(code)
  end
  word
end

def decrypt(ciphered)
  sentence = ''
  ciphered.split('  ').each do |word|
    # sentence += decode_word(word) + ' '
    sentence += "#{decode_word(word)} "
  end
  puts sentence

  puts sentence
end

decrypt('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# prints out `A BOX FULL OF RUBIES`
