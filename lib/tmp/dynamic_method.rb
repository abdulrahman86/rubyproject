class Test
  def test
    puts 'test'
  end
end

x = Test.new
x.send(:test)