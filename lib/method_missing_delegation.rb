class Test
  def method_missing(name, *args)
    puts name
    puts args
  end

  def test_attribute_missing
    eval ("@attribute = 'hello'")

    puts @attribute
  end
end

# Test.new().abc = 5

Test.new.test_attribute_missing