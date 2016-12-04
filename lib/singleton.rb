class Test
  def hello
    puts 'hello'
  end
end

class Test2 < Test
  def hello1
    hello
  end
end

x = Test2.new()
x.hello1





