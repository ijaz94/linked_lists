require "./linkedlist.rb"

list = LinkedList.new

list.append("dog")
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')


puts list.head.value
puts list.head.next_node
puts list.head.next_node.value
puts list.size
puts list.tail.value
puts list.tail.next_node
list.prepend('rabbit')
list.insert_at('fish', 2)
puts list.find('rabbit')
list.remove_at(2)
puts list
