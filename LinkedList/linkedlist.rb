require './node.rb'

class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = @tail = nil
    @size = 0
  end

  def append(value)
    node = Node.new(value)
    if @tail == nil
      @tail = node
      @head = @tail
    else
      @tail.next_node = node
      @tail = node

    end
    @size += 1
    node.value
  end

  def prepend(value)
    node = Node.new(value)
    if @head == nil
      @head = node
      @tail = head
    else
      node.next_node = @head
      @head = node

    end
    @size += 1
    node.value
  end

  def at(index)
    count = 0
    current = head
    until current == nil

      return current if count == index

      current = current.next_node
      count += 1
    end
  end

  def pop
    popped_node = @tail
    last_node = at(size - 2)
    @tail = last_node
    last_node.next_node = nil
    popped_node.value
  end

  def insert_at(value, index)
    prepend(value) and return if index == 0
    append(value) and return if index == size - 1

    new_node = Node.new(value)
    current_node = at(index)
    prev_node = at(index - 1)

    unless current_node == nil
      new_node.next_node = current_node
      prev_node.next_node = new_node
      @size += 1
      new_node.value
    end
  end

  def remove_at(index)
    pop and return if index == size - 1

    removed_node = at(index)

    if index == 0
      @head = @head.next_node
      removed_node = nil
      @size -= 1
    else

      unless removed_node == nil
        prev_node = at(index - 1)
        prev_node.next_node = removed_node.next_node
        removed_node = nil
        @size -= 1
      end
    end
  end

  def contains?(value)
    current = head
    until current == nil
      return true if current.value == value

      current = current.next_node
    end
    false
  end

  def find(value)
    count = 0
    current = head
    until current == nil
      return count if current.value == value

      current = current.next_node
      count += 1
    end
    false
  end

  def to_s
    output = ''
    current = head
    until current == nil
      puts current.value
      output += "(#{current.value}) -> "
      current = current.next_node

      if current == nil
        output += 'nil'
      end
    end
    output
  end
end
