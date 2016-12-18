class Test

end


method_name = 'test'.to_sym

method2_name = 'test2'.to_sym


Test.class_eval %Q"
  define_method :#{method_name} do |x|
    puts x
  end
"

Test.class_eval %Q"
  def #{method2_name} x
    puts x
  end
"


Test.new.test 1
Test.new.test2 1




