
require 'ostruct'

x = OpenStruct.new
x.test = 'test'

# puts x.test


class Test

  remove_method
  instance_methods.each {|x| undef_method x}

  def test x
    print x
  end
end

y = Test.new
print y.methods
