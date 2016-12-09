module Parameter

    def parameters
      @parameters ||= {}
    end

    def parameter name, value
      parameters[name] = value
    end
end

class TestParameter

  class << self
    include Parameter
  end

  parameter 'hello', 1
  parameter 'bye', 2

  def initialize
    self.class.parameters.each{|x, y| eval("@#{x} = #{y}")}
  end

  def test
    [@hello, @bye]
  end
end

print TestParameter.new.test



