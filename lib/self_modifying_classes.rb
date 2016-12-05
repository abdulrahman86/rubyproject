class Test


  def self.do_sth
    def printHello
      puts 'hello'
    end
  end
end


Test.do_sth # modifies class
Test.new().printHello

puts __FILE__

