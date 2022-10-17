require 'byebug'

class Node
  attr_accessor :next
  attr_accessor :data

  def initialize(data=nil)
    @data = data
    @next = nil
  end


  def to_s
    "#{data}"
  end

  
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil

  end

  def append(value)
    # byebug
    if @head  # true or false --<falsy values 
      find_tail.next = Node.new(value) unless value <= -1
    else
      @head = Node.new(value)
    end
  end

  def append_exclude(value)
    # byebug
    if value == -1
      p "-1 is there"
    else
      p "else"
    end 
  end

  def shift_left(node)
    if node.next != nil
      node.data = node.next.data
      shift_left(node.next)
    else
      node.data = nil
    end
  end

  def delete(node,value)
    if node.data == value
      shift_left(node)
    else
      # p "delete - else"
      delete(node.next,value) unless node.next == nil
    end
  end

  def find_tail
    # byebug
    node = @head
    # if node != -1
    return node if !node.next
    return node if !node.next while node = node.next
    # else  
    #   puts "Nill"
    # end
  end

  def display
    # byebug
    node = @head
    p node.data
    while node.next != nil
      node = node.next
      puts node.data unless node.data == nil
    end
  end

  


end

list = LinkedList.new
# list1 = LinkedList.new


a = nil
byebug
a = gets.chomp.to_i
while a != -1 do
  list.append a
  a = gets.chomp.to_i



  # byebug
# a = gets.chomp.to_i
# if a != -1
#  list.append a
# end
 
end




list.display
p "Delete the value"
value = gets.chomp.to_i

# byebug
list.delete(list.head,value)
list.display



 


# i = 0
# num = 5

# while i <= num  do
#    puts("Inside the loop i = #{i}" )
#    i +=1
# end

 

# list.append(1)
# list.append(2)
# list.append(3)
# list.append(4)
# list.append(5)
# list.append(6)

# list1.append(0)
# list1.append(0)
# list1.append(0)
# list1.append(0)
# list1.append(0)
# list1.append(0)

# p list == list1
