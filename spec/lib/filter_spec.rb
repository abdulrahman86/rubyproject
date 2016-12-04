RSpec.configure do |config|
  config.before(:example, :foo => :bar) do
    invoked_hooks << :before_example_foo_bar
  end
end

RSpec.describe "example 1" do

  describe "a filtered before :example hook" do
    let(:invoked_hooks) { [] }

    describe "group without matching metadata" do
      it "does not run the hook" do
        expect(invoked_hooks).to be_empty
      end

      it "runs the hook for an example with matching metadata", :foo => :bar do
        expect(invoked_hooks).to eq([:before_example_foo_bar])
      end
    end

    describe "group with matching metadata", :foo => :bar do
      it "runs the hook" do
        expect(invoked_hooks).to eq([:before_example_foo_bar])
      end
    end
  end
end

# RSpec.describe "example 2" do
#   RSpec.configure do |config|
#     config.around(:example, :foo => :bar) do |example|
#       order << :before_around_example_foo_bar
#       example.run
#       expect(order).to eq([:before_around_example_foo_bar, :example])
#     end
#   end
#
#   RSpec.describe "a filtered around(:example) hook" do
#     let(:order) { [] }
#
#     describe "a group without matching metadata" do
#       it "does not run the hook" do
#         expect(order).to be_empty
#       end
#
#       it "runs the hook for an example with matching metadata", :foo => :bar do
#         expect(order).to eq([:before_around_example_foo_bar])
#         order << :example
#       end
#     end
#
#     describe "a group with matching metadata", :foo => :bar do
#       it "runs the hook for an example with matching metadata", :foo => :bar do
#         expect(order).to eq([:before_around_example_foo_bar])
#         order << :example
#       end
#     end
#   end
# end