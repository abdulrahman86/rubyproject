module M

end

class D
  include M

  def test
    puts 'test'
  end
  puts 'hello'
end

class D
  puts 'hello'
end

print D.instance_methods.grep /equal|test/

puts

print D.class.instance_methods false

puts

print D.class

puts
print D.superclass
puts
print D.class.class
puts

CONSTD = D
x = CONSTD.new
y = x.itself

def y.hellos
  puts 'hellos'
end

x.hellos