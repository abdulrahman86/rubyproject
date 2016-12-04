class Util
  def self.block
    yield "hello" if block_given?
  end
end

class Document

  def initialize
    @words = ['hello', 'bye']
  end

  def iterate
    @words.each{|x| yield x if block_given?}
  end
end

class Test
  def each_word &block
    [1, 2, 3].each{|x| block.call(x)}
  end
end

# Document.new().iterate{|x| puts x}

Enumerator.new([1, 2, 3], :each ).lazy.map{|x| x + 1}.each{|x| puts x}



