module Util
  def self.hello
    puts 'hello'
  end
end

# y = lambda do |x, y|
#   puts x + y
# end
#
# x = Util
#
# x.hello
#
# y.call 'hello', 'bye'

module Test
  class ModClass
    def hello
      puts 'hello'
    end
  end
  def self.hello
    puts self
  end
  def bye
    puts 'bye'
  end
end

class Test1
  include Test
end

class Test2
  class << self
    include Test
  end
end

Test1.new.bye
Test2.bye

include Test

ModClass.new.bye
ModClass.new.hello

class Test3
  def hello
    bye
  end
  def self.bye
    put 'bye'
  end
end

Test3.new.hello