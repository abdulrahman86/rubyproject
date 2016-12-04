require 'with_logging'

class TestLogging
  include WithLogging

  def hello
    with_logging_before('about to print hello', lambda {puts 'hello'})
  end
end

TestLogging.new().hello