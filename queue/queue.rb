class Queue

  def initialize
    @queue = []
  end

  def in n
    @queue << n
  end

  def out
    raise "queue empty!" unless @queue.size > 0
    @queue.shift
  end

  def size
    @queue.size
  end
end
