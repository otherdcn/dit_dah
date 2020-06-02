require "dit_dah/version"

module DitDah
  class Error < StandardError; end
  
  class DitDah
    def initialize(input_text=nil)
      @input_text = input_text
    end

    def get_input_text
      @input_text
    end

    def set_input_text(input_text)
      @input_text = input_text
    end
  end
end
