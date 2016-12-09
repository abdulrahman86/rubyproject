class Test
  def initialize_from_file( path )
    instance_eval( File.read( path ) )
  end

  def content content
    @content = content
  end

  def run
    puts @content
  end
end
#
# Test.new do
#   content
# end

Test.new.initialize_from_file('test.txt')



require 'dsl/kernel'

hello

