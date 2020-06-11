require "dit_dah/version"

module DitDah
  class NoInputError < StandardError; end

  class DitDah
    attr_reader :morseNalpha

    def initialize
      @input_text = nil
      @morseNalpha = Hash.new
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
      
      if !(text.nil?)
        text.each do |char|
          @morse_code.push(@morseNalpha[char])
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
      @morseNalpha['a'] = ".-"
      @morseNalpha['b'] = "-..."
      @morseNalpha['c'] = "-.-."
      @morseNalpha['d'] = "-.."
      @morseNalpha['e'] = "."
      @morseNalpha['f'] = "..-."
      @morseNalpha['g'] = "--."
      @morseNalpha['h'] = "...."
      @morseNalpha['i'] = ".."
      @morseNalpha['j'] = ".---"
      @morseNalpha['k'] = "-.-"
      @morseNalpha['l'] = ".-.."
      @morseNalpha['m'] = "--"
      @morseNalpha['n'] = "-."
      @morseNalpha['o'] = "---"
      @morseNalpha['p'] = ".--."
      @morseNalpha['q'] = "--.-"
      @morseNalpha['r'] = ".-."
      @morseNalpha['s'] = "..."
      @morseNalpha['t'] = "-"
      @morseNalpha['u'] = "..-"
      @morseNalpha['v'] = "...-"
      @morseNalpha['w'] = ".--"
      @morseNalpha['x'] = "-..-"
      @morseNalpha['y'] = "-.--"
      @morseNalpha['z'] = "--.."
      @morseNalpha['.'] = ".-.-.-"
      @morseNalpha[','] = "--..--"
      @morseNalpha['?'] = "..--.."
      @morseNalpha['/'] = "-..-."
      @morseNalpha['@'] = ".--.-."
      @morseNalpha['1'] = ".----"
      @morseNalpha['2'] = "..---"
      @morseNalpha['3'] = "...--"
      @morseNalpha['4'] = "....-"
      @morseNalpha['5'] = "....."
      @morseNalpha['6'] = "-...."
      @morseNalpha['7'] = "--..."
      @morseNalpha['8'] = "---.."
      @morseNalpha['9'] = "----."
      @morseNalpha['0'] = "-----"
      @morseNalpha['/'] = " " # the key is space character with the space as equivalent morse code
      @morseNalpha[':'] = "---..."
      @morseNalpha['-'] = "-....-"
      @morseNalpha['('] = "-.--.-"
      @morseNalpha[')'] = "-.--.-"
      @morseNalpha['='] = "-...-"
    end
  end
end
