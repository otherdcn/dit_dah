require 'dit_dah'

RSpec.describe DitDah do
  it "has a version number" do
    expect(DitDah::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe DitDah::DitDah do
    it "exist and can be instantiated" do
      expect(DitDah::DitDah.new).to_not be_nil
    end

      describe "#get_input_text" do
      it {is_expected.to respond_to(:to_morse_code)}
      
      context "when getting input_text which is not set" do
        it "returns nil" do
          obj = DitDah::DitDah.new
          
          expect(obj.get_input_text).to be_nil
        end
      end

      context "when getting input_text value 'dcn'" do
        it "returns 'dcn' in split char array form" do
          obj = DitDah::DitDah.new
          obj.set_input_text("dcn")

          expect(obj.get_input_text).to eq(["d", "c", "n"])
          expect(obj.get_input_text).to be_a(Array)
        end
      end
    end

    describe "#set_input_text" do
      it {is_expected.to respond_to(:to_morse_code)}
      
      context "when setting the value 'fragilistic' to input_text" do
        it "will set if #get_input_text equals to 'fragilistic' in split char array form" do
          obj = DitDah::DitDah.new
          obj.set_input_text("fragilistic")

          expect(obj.get_input_text).to eq(["f", "r", "a", "g", "i", "l", "i", "s", "t", "i", "c"])
        end
      end
    end

    describe "#to_morse_code" do
      it {is_expected.to respond_to(:to_morse_code)}
      
      context "given no argument" do
        it "returns morse code equivalence of the 'input_text' variable set by #set_input_text" do
          obj = DitDah::DitDah.new
          obj.set_input_text("dcn")

          expect(obj.to_morse_code).to eq(["-..", "-.-.", "-."])
        end

        it "raises NoInputError if 'input_text' instance variable is not set earlier" do
          obj = DitDah::DitDah.new

          expect{ obj.to_morse_code }.to raise_error(DitDah::NoInputError)
        end
      end

      context "given an argument" do
        it "returns morse code equivalence of the argument provided" do
          obj = DitDah::DitDah.new

          expect(obj.to_morse_code("dcn")).to eq(["-..", "-.-.", "-."])
        end
      end
    end

    describe "#get_morse_code" do
      it {is_expected.to respond_to(:to_morse_code)}
      
      context "if #to_morse_code was not called earlier" do
        it "returns empty array" do
          obj = DitDah::DitDah.new

          expect(obj.get_morse_code).to be_empty
        end
      end

      context "if #to_morse_code was called earlier" do
        it "returns morse code equivalence" do
          obj = DitDah::DitDah.new
          obj.to_morse_code("dcn")

          expect(obj.get_morse_code).to eq(["-..", "-.-.", "-."])
        end
      end
    end

    describe "#morseNalpha" do
      it {is_expected.to respond_to(:morseNalpha)}
    end
  end
end
