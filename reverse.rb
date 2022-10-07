# Complete the 'reverse' function below.

def reverse(llist)
    if not llist or not llist.next then
     return llist
 end
 
 current_node = llist
 previous_node = nil
 next_node = nil
 
 while current_node != nil do
     next_node = current_node.next
     current_node.next = previous_node
     previous_node = current_node
     current_node = next_node
 end
    return previous_node
 end 