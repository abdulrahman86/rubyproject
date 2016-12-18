module M
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def around method_name

      new_method = ('benchmark_' + method_name.to_s).to_sym

      alias_method new_method , method_name

      define_method method_name do |*args, &block|
        puts 'around1'

        self.send(new_method, args, &block)

        puts 'around2'

      end
    end
  end
end

class Test
  include M

  def test arg
    puts 'test'
    yield if block_given?
  end

  around :test
end

Test.new.test 1 do
  puts 'block'
end