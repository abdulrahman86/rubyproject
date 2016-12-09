class Test

end

x = Test.new()

Test.instance_eval do
  def hello
    puts 'hello'
  end
end

Test.class_eval do
  def bye
    puts 'bye'
  end
end



Test.hello

x.bye