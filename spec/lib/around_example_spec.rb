RSpec.describe "around hook" do
  around(:example) do |example|
    puts "around example before"
    example.run
    puts "around example after"
  end

  it "gets run in order" do
    puts "in the example"
  end
end

RSpec.describe "something" do
  around(:example) do |example|
    puts example.metadata[:foo]
    example.run
  end

  it "does something", :foo => "this should show up in the output" do
  end
end

# global around hook
RSpec.configure do |c|
  c.around(:example) do |example|
    puts "around example before"
    example.run
    puts "around example after"
  end
end

RSpec.describe "around filter" do
  it "gets run in order" do
    puts "in the example"
  end
end

module IncludedInConfigureBlock
  def included_in_configure_block
    true
  end
end

RSpec.configure do |c|
  c.include IncludedInConfigureBlock
end

RSpec.describe "around filter" do
  around(:example) do |example|
    example.run
  end

  it "runs the example in the correct context" do
    expect(included_in_configure_block).to be_truthy
  end
end