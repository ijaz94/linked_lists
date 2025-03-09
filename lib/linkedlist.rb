class Node
  attr_accessor :value, :next_node
  def initialize(value)
    @value = value
    @next_node = nil
  end
end


class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

 # Add a new node to the end of the list
  def append(value)
    new_node = Node.new(value)
    if @head.nil?  # If the list is empty, set the new node as the head
      @head = new_node
    else
      current = @head
      while current.next_node != nil  # Traverse to the last node
        current = current.next_node
      end
      current.next_node = new_node
    end
  end
 
  # Add a new node to the start of the list
  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  # Return the total number of nodes in the list
  def size
    count = 0 
    current = @head
    while current != nil
      count += 1
      current = current.next_node
    end
    count
  end

  # Return the first node in the list
  def head
    @head
  end

  # Return the last node in the list
  def tail
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current
  end

  # Return the node at the given index
  def at(index)
    current = @head
    count = 0
    while count < index
      current = current.next_node
      count += 1
    end
    current
  end

  # Remove the last element from the list
  def pop
    current = @head
    while current.next_node.next_node != nil
      current = current.next_node # Traverse to the second last node
    end
    current.next_node = nil # Remove the last node
  end

  # Return true if the value is in the list, otherwise return false
  def contains?(value)
    current = @head
    while current != nil
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  # Return the index of the node containing value, or nil if not found
  def find(value)
    current = @head
    count = 0
    while current != nil
      return count if current.value == value
      current = current.next_node
      count += 1
    end
    nil
  end

  # Represent the linked list as a string
  def to_s
    current = @head
    while current != nil
      print "( #{current.value} ) -> "
      current = current.next_node
    end
    print "nil\n"
  end

  # Insert a new node at the given index
  def insert_at(value, index)
    new_node = Node.new(value)
    if index == 0
      new_node.next_node = @head # Set the new node as the head
      @head = new_node
    else
      current = @head
      count = 0
      while count < index - 1  # Traverse to the node before the index
        current = current.next_node # Traverse to the second last node
        count += 1
      end
      new_node.next_node = current.next_node # Set the next node of the new node
      current.next_node = new_node # Insert the new node
    end
  end

  # Remove the node at the given index
  def remove_at(index)
    if index == 0
      @head = @head.next_node
    else
      current = @head # Traverse to the node before the index
      count = 0  
      while count < index - 1 # Traverse to the node before the index
        current = current.next_node
        count += 1
      end
      current.next_node = current.next_node.next_node # Remove the node
    end
  end

end






