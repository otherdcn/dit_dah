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

    context "initializing instance variables" do
      describe "#get_input_text" do
        context "when getting input_text from an uninitialized object" do
          it "returns nil" do
            obj = DitDah::DitDah.new()
            
            expect(obj.get_input_text).to be_nil
          end
        end

        context "when getting input_text from an initialized object with string 'placeholder'" do
          it "returns 'placeholder'" do
            obj = DitDah::DitDah.new("placeholder")

            expect(obj.get_input_text).to eq("placeholder")
          end
        end
      end

      describe "#set_input_text" do
        context "when setting the value 'fragilistic' to input_text" do
          it "will be successfully set if #get_input_text equals to 'fragilistic'" do
            obj = DitDah::DitDah.new

            obj.set_input_text("fragilistic")

            expect(obj.get_input_text).to eq("fragilistic")
          end

          it "will successfully overwrite existing values in 'input_text'" do
            obj = DitDah::DitDah.new("super")

            obj.set_input_text("fragilistic")

            expect(obj.get_input_text).to eq("fragilistic")
            expect(obj.get_input_text).to_not eq("super")
          end
        end
      end
    end
  end
end
