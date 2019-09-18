# Linked List # 2

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end




def reverse_list(list, previous=nil)
  
  counter = 0

  while list
    temp = list.next_node
    list.next_node = previous # problems
    previous = list
    list = temp

  end
    puts "#{previous.value} is the new Head "
    

end




node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)



print_values(node3)

puts "-----"

reverse_list(node3)



print_values(node1)


puts "--optional---"

# Optional Section
# Optional Section

def is_infinite(list)

  tort = list
  hare = list 

  loop do 
    if hare == nil
      return 'No Loop Found'
    else
      hare = hare.next_node
    end

    if hare == nil
      return 'No Loop Found...'
    else
      hare = hare.next_node
      tort = tort.next_node
    end

    if hare == tort
      return 'Loop Found!'
    end

  end

end

puts is_infinite(node1) # does not have a loop

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

puts  is_infinite(node3) # does have a loop