module Test

  class << self
    @config = 'test'

    def test
      puts @config
    end
  end
end

Test.test

