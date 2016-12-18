class Test
  def method_missing(name, *args, &block)
    print 'name: '
    print name
    puts
    print 'args: '
    print args
    puts
    block.call if block
  end
end

x = Test.new

x.code {
  x.test 'hello', :test => '2'
  x.test2 'bye'
}

