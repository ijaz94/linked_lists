# linked_lists
# LinkedList Implementation in Ruby

This repository contains a Ruby implementation of a **singly linked list**. A linked list is a linear data structure where each element (called a **node**) contains data and a reference (or link) to the next node in the sequence. This implementation provides basic operations for managing and manipulating a linked list.

---

## Table of Contents
1. [Features](#features)
2. [Classes](#classes)
   - [Node](#node)
   - [LinkedList](#linkedlist)
3. [Usage](#usage)
4. [Methods](#methods)
5. [Example](#example)
6. [Contributing](#contributing)
7. [License](#license)

---

## Features
- **Node Management**: Create and manage nodes with `value` and `next_node` attributes.
- **Basic Operations**: Append, prepend, insert, and remove nodes.
- **Search and Traversal**: Find nodes by value or index, and check if a value exists in the list.
- **List Representation**: Convert the linked list to a string for easy visualization.

---

## Classes

### Node
The `Node` class represents a single element in the linked list. Each node contains:
- `value`: The data stored in the node.
- `next_node`: A reference to the next node in the list.

### LinkedList
The `LinkedList` class manages the entire list. It provides methods for adding, removing, and searching nodes, as well as utility methods for working with the list.

---

## Usage

To use the linked list implementation, follow these steps:

1. **Clone the repository** or copy the code into your Ruby project.
2. **Create a new instance** of the `LinkedList` class:
   ```ruby
   list = LinkedList.new
   ```
3. Use the provided methods to manipulate the list.

---

## Methods

### `append(value)`
Adds a new node with the given `value` to the end of the list.

### `prepend(value)`
Adds a new node with the given `value` to the beginning of the list.

### `size`
Returns the total number of nodes in the list.

### `head`
Returns the first node in the list.

### `tail`
Returns the last node in the list.

### `at(index)`
Returns the node at the specified `index` (starting from 0).

### `pop`
Removes and returns the last node in the list.

### `contains?(value)`
Returns `true` if the list contains a node with the specified `value`, otherwise `false`.

### `find(value)`
Returns the index of the first node containing the specified `value`, or `nil` if not found.

### `to_s`
Returns a string representation of the list in the format:
```
( value1 ) -> ( value2 ) -> ... -> nil
```

### `insert_at(value, index)`
Inserts a new node with the given `value` at the specified `index`.

### `remove_at(index)`
Removes the node at the specified `index`.

---

## Example

```ruby
# Create a new linked list
list = LinkedList.new

# Add nodes to the list
list.append("dog")
list.append("cat")
list.append("parrot")

# Prepend a node to the beginning of the list
list.prepend("hamster")

# Insert a node at a specific index
list.insert_at("fish", 2)

# Print the list
puts list.to_s
# Output: ( hamster ) -> ( dog ) -> ( fish ) -> ( cat ) -> ( parrot ) -> nil

# Check the size of the list
puts list.size
# Output: 5

# Find the index of a value
puts list.find("fish")
# Output: 2

# Remove the last node
list.pop
puts list.to_s
# Output: ( hamster ) -> ( dog ) -> ( fish ) -> ( cat ) -> nil

# Remove a node at a specific index
list.remove_at(1)
puts list.to_s
# Output: ( hamster ) -> ( fish ) -> ( cat ) -> nil
```

---

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

---

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Enjoy working with linked lists in Ruby! 🚀