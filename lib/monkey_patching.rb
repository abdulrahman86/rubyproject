module MyModule
  class Test
    def hello
      puts 'hello'
    end
  end
end

module MyModule
  class Test
    def bye
      puts 'bye'
    end
  end

end

include MyModule

Test.new().bye

class String
  def bye
    puts 'byes'
  end
end

"string".bye