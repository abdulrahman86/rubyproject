RSpec::Matchers.define :support_blocks_with_errors do
  match(:notify_expectation_failures => true) do |actual|
    actual.call
    true
  end

  supports_block_expectations
end

RSpec.describe "a custom block matcher" do
  specify do
    expect {
      expect(false).to eq false
    }.to support_blocks_with_errors
  end
end