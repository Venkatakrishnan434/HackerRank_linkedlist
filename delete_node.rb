
# Complete the deleteNode function in the editor below.

def deleteNode(llist, position)
    llist.delete_at(position)
    print llist
end

  deleteNode([20, 6, 2, 19, 7, 4, 15, 9], 3)