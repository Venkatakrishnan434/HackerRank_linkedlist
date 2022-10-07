
class Node
  attr_accessor :next
  attr_reader :data

  def initialize(data=nil)
    @data = data
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tale.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tale
    node = @head

    return node if !node.next
    return node if !node.next while (node = node.next)
  end

  def display
    node = @head

    puts node
    while (node = node.next)
      puts node
    end
  end
end

list = LinkedList.new
list1 = LinkedList.new

list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)
list.append(6)

list1.append(0)
list1.append(0)
list1.append(0)
list1.append(0)
list1.append(0)
list1.append(0)

p list == list1
