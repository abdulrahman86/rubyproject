require 'publisher'

class MyClass
  def initialize message
    @message = message
  end
  def publish
    $publisher.publish @message
  end
  def publish2
    $publisher2.publish @message
  end
end