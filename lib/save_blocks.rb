
def blocks(block2, block3, &block)
  block2.call
  block3.call
  yield
end

def blocks2(&block)
  block.call
end

x = lambda do
  puts 'x'
end

blocks(x, x){puts 'x'}

blocks2(&x)


x = {:test => 'test',
     :hello => 'hello'}