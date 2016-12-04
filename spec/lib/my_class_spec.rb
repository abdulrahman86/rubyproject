require 'my_class'

RSpec.shared_examples 'swap publisher' do |message|
  let(:publisher) { instance_double(Publisher, publish: message) }
  let(:old_publisher) { $publisher }
  before do
    old_publisher
    $publisher = publisher
  end
  after { $publisher = old_publisher }
end

describe "MyClass test" do
  context "Test MyClass publish" do
    include_examples 'swap publisher', 'hello'
    it "should publish message" do
      x = MyClass.new 'hello'
      expect(x.publish).to eq('hello')
    end
  end

  context "Test MyClass publish2" do
    it "should publish message" do
      allow($publisher2).to receive(:publish).with('hello1').and_return('hello1')
      x = MyClass.new 'hello1'
      expect(x.publish2).to eq('hello1')
    end
  end
end