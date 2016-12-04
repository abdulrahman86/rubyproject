def method first_arg, *middle_arg, last_arg
  puts first_arg
  print middle_arg
  puts
  puts last_arg
end

method 1, 2, 2

puts %Q(\\"")

heres_one = <<EOF
\\ This is the beginning of my here document.
And this is the end.
EOF

puts heres_one

puts "abc\n\n\n".strip
print "hello"

the_time = '10:24 AM'
puts "It's morning!" if /AM/ =~ the_time

puts "abc".upcase
puts :abc.length
puts /abc/.class


class Test
  attr_reader :title

  def title=(title)
    @title = title
  end
end

x = Test.new
x.title = "hello"
puts x.title
