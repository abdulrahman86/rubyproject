module Aspect

  def around(before_block, action_block, after_block)
    before_block.call if before_block
    action_block.call
    after_block.call if after_block
  end

  def before(before_block, action_block)
    around(before_block, action_block, nil)
  end

  def afte(action_block, after_block)
    around(nil, action_block, after_block)
  end


end