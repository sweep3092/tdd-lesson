class Stack
  class EmptyStackError < StandardError; end

  def initialize
    @values = []
  end

  def empty?
    @values.length == 0
  end

  def push(v)
    @values << v
  end

  def pop
    raise EmptyStackError if empty?
    @values.pop
  end

  def top
    raise EmptyStackError if empty?
    @values.last
  end

  def size
    @values.length
  end
end
