# frozen_string_literal: true

RSpec.describe Multiplier do
  it "has a version number" do
    expect(Multiplier::VERSION).not_to be nil
  end

  describe ".call" do
    it "multiplies array of numbers" do

      result = described_class.call(2, 3, 5)

      expect(result).to eq(30)
    end

    context "when not a number among elements" do
      it "raises an error" do
        array = [2, "text", 3]

        expect { described_class.call(array) }.to raise_error(Multiplier::NotANumberError)
      end
    end
  end
end
