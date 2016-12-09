module Test
  extend self

  def hello
    @hello = 'hello'
  end
  def bye
    puts @hello
  end
end

Test.hello
Test.bye

