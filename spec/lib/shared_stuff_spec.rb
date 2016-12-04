RSpec.configure do |rspec|
  # This config option will be enabled by default on RSpec 4,
  # but for reasons of backwards compatibility, you have to
  # set it on RSpec 3.
  #
  # It causes the host group and examples to inherit metadata
  # from the shared context.
  rspec.shared_context_metadata_behavior = :apply_to_host_groups
end

RSpec.shared_context "shared stuff", :shared_context => :metadata do
  before { @some_var = :some_value }
  def shared_method
    "it works"
  end
  let(:shared_let) { {'arbitrary' => 'object'} }
  subject do
    'this is the subject'
  end
end

RSpec.configure do |rspec|
  rspec.include_context "shared stuff", :include_shared => false
end

RSpec.describe "group that does not include the shared context" do
  it "does not have access to shared methods normally" do
    expect(self).not_to respond_to(:shared_method)
  end

  it "has access to shared methods from examples with matching metadata", :include_shared => false do
    expect(shared_method).to eq("it works")
  end

  it "inherits metadata form the included context due to the matching metadata", :include_shared => false do |ex|
    expect(ex.metadata).to include(:shared_context => :metadata)
  end
end


