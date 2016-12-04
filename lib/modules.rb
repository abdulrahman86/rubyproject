module Util
  def self.hello
    puts 'hello'
  end
end

y = lambda do |x, y|
  puts x + y
end

x = Util

x.hello

y.call 'hello', 'bye'