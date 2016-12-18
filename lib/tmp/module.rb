module Test
  private
  def hello
    puts 'hello'
  end
end

class Test2
  include Test
  def test
    hello
  end
end

Test2.new.test

puts

print Test.private_instance_methods false
