class Stack

  def initialize
    @stack= []
  end

  def push el
    @stack << el
  end

  def pop
    raise "Empty stack" unless @stack.size > 0
    pop = @stack.last
    @stack -= [@stack.last]
    pop
  end

  def size
    @stack.length
  end

end
