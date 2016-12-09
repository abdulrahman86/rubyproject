x = RuntimeError.new("hello")

puts x.kind_of? Exception


module TestMod
  class Test
    def self.hello
      TestMod.bye
    end
  end
  class << self
    def bye
      puts 'bye'
    end
  end
end