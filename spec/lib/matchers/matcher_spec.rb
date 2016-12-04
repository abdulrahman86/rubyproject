RSpec.describe "calling a missing method" do
  it "raises" do
    expect {Object.new.foo}.to raise_error
  end
end