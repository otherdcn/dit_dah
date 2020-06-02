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
  end
end
