require "dit_dah/version"

module DitDah
  class NoInputError < StandardError; end

  class DitDah
    attr_reader :morseNalpha

    MORSE_HASH = Hash.new
    
    def initialize
      @input_text = nil
      @morse_code = Array.new

      init_morse_chars
    end

    def set_input_text(input_text)
      @input_text = input_text.downcase.split("").map(&:to_s)
    end

    def get_input_text
      @input_text
    end

    def to_morse_code(arg_text=nil)
      text = arg_text.nil? ? get_input_text : arg_text.downcase.split("").map(&:to_s)

      @morse_code.clear # clear existing content before adding to array

      if !(text.nil?)
        text.each do |char|
          @morse_code.push(MORSE_HASH[char])
        end

        get_morse_code
      else
        raise NoInputError
      end
    end

    def get_morse_code
      @morse_code
    end

    def init_morse_chars
      # key is the alphabet, value is the morse code
      MORSE_HASH['a'] = ".-"
      MORSE_HASH['b'] = "-..."
      MORSE_HASH['c'] = "-.-."
      MORSE_HASH['d'] = "-.."
      MORSE_HASH['e'] = "."
      MORSE_HASH['f'] = "..-."
      MORSE_HASH['g'] = "--."
      MORSE_HASH['h'] = "...."
      MORSE_HASH['i'] = ".."
      MORSE_HASH['j'] = ".---"
      MORSE_HASH['k'] = "-.-"
      MORSE_HASH['l'] = ".-.."
      MORSE_HASH['m'] = "--"
      MORSE_HASH['n'] = "-."
      MORSE_HASH['o'] = "---"
      MORSE_HASH['p'] = ".--."
      MORSE_HASH['q'] = "--.-"
      MORSE_HASH['r'] = ".-."
      MORSE_HASH['s'] = "..."
      MORSE_HASH['t'] = "-"
      MORSE_HASH['u'] = "..-"
      MORSE_HASH['v'] = "...-"
      MORSE_HASH['w'] = ".--"
      MORSE_HASH['x'] = "-..-"
      MORSE_HASH['y'] = "-.--"
      MORSE_HASH['z'] = "--.."
      MORSE_HASH['.'] = ".-.-.-"
      MORSE_HASH[','] = "--..--"
      MORSE_HASH['?'] = "..--.."
      MORSE_HASH['/'] = "-..-."
      MORSE_HASH['@'] = ".--.-."
      MORSE_HASH['1'] = ".----"
      MORSE_HASH['2'] = "..---"
      MORSE_HASH['3'] = "...--"
      MORSE_HASH['4'] = "....-"
      MORSE_HASH['5'] = "....."
      MORSE_HASH['6'] = "-...."
      MORSE_HASH['7'] = "--..."
      MORSE_HASH['8'] = "---.."
      MORSE_HASH['9'] = "----."
      MORSE_HASH['0'] = "-----"
      MORSE_HASH[' '] = "/" # the key is space character with the space as equivalent morse code
      MORSE_HASH[':'] = "---..."
      MORSE_HASH['-'] = "-....-"
      MORSE_HASH['('] = "-.--.-"
      MORSE_HASH[')'] = "-.--.-"
      MORSE_HASH['='] = "-...-"
    end
  end
end
