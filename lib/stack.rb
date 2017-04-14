class Stack
  class EmptyStackError < StandardError; end

  def initialize
    @size = 0
  end

  def empty?
    @size == 0
  end

  def push(v)
    @value = v
    @size += 1
  end

  def pop
    raise EmptyStackError
  end

  def top
    @value
  end

  def size
    @size
  end
end
