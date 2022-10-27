# The whole list
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = @tail = Node.new
  end

  def prepend(value)
    if @head.value.nil?
      @head = @tail = Node.new(value)
    else
      temp = Node.new(value)
      temp.next_node = @head
      @head = temp
    end
  end

  def append(value)
    if @head.value.nil?
      @head = @tail = Node.new(value)
    else
      temp = Node.new(value)
      @tail.next_node = temp
      @tail = temp
    end
  end

  def size
    count = 0
    temp = @head
    until temp.nil?
      count += 1
      temp = temp.next_node
    end
    count
  end

  def at(index)
    idx = 0
    temp = @head
    until temp.nil? || idx == index
      temp = temp.next_node
      idx += 1
    end
    temp
  end

  def pop
    temp = @head
    temp = temp.next_node until temp.next_node.next_node.nil?
    @tail = temp
    temp.next_node = nil
  end

  def contain?(value)
    temp = @head
    until temp.nil?
      return true if temp.value == value

      temp = temp.next_node
    end
    false
  end

  def find(value)
    idx = 0
    temp = @head
    until temp.nil? || temp.value == value
      temp = temp.next_node
      idx += 1
    end
    idx
  end

  def to_s
    str = String.new
    temp = @head
    until temp.nil?
      str << "( #{temp.value} ) -> "
      temp = temp.next_node
    end
    str << 'nil'
  end
end