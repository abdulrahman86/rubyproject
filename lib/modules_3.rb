class Test
  def self.test
    puts self
  end
end

class Test2 < Test
  test
end

