
module TestModule
  def hello
    puts 'hello'
  end
end

class Test
  include TestModule
  def self.inherited klass
    puts "Inherited #{klass}"
  end
end


at_exit do
  puts 'bye'
end
