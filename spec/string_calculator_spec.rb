require "string_calculator"

describe StringCalculator do

  describe ".add" do
    context "two numbers" do
      context "given '2,4'" do
        it "returns 6" do
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end

      context "given '17,100'" do
        it "returns 117" do
          expect(StringCalculator.add("17,100")).to eql(117)
        end
      end
    end
  end
end

shared_examples "some example" do |parameter|
  # Same behavior is triggered also with either `def something; 'some value'; end`
  # or `define_method(:something) { 'some value' }`
  let(:something) { parameter }
  it "uses the given parameter" do
    expect(something).to eq(parameter)
  end
end

describe "here" do
  include_examples "some example", "parameter1"
  #include_examples "some example", "parameter2"

  # context "some context" do
  #   it "one" do
  #     expect(something).to eq("parameter2")
  #   end
  # end
end