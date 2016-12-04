RSpec.describe ":if => true group" do
  it(":if => true group :if => true example", :if => true) { puts 1 }
  it(":if => true group :if => false example", :if => false) {puts 2 }
  it(":if => true group no :if example") {puts 3 }
end

RSpec.describe ":if => false group", :if => false do
  it(":if => false group :if => true example", :if => true) { puts 4}
  it(":if => false group :if => false example", :if => false) { puts 5}
  it(":if => false group no :if example") {puts 6 }
end

RSpec.describe "no :if group" do
  it("no :if group :if => true example", :if => true) { puts 7}
  it("no :if group :if => false example", :if => false) { puts 8}
  it("no :if group no :if example") { puts 9}
end