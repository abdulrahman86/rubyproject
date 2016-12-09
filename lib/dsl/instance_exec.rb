class Test
  def test a, b
    x = a + b
    puts x
  end
end

Test.new.instance_exec(5, 6) {|x, y| test x, y}