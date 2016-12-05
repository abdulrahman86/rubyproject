class Test
  def method_missing(name, *args)
    puts name
    puts args
  end
end

Test.new().abc = 5