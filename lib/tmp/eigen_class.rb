class Test

end

x = Test.new

class << x
  def test
    puts 'test'
  end
end

x.test

class Test1
  class << self
    def test1
      puts 'test inheritance'
    end
  end
end

class Test2 < Test1

end

Test2.test1