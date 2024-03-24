import 'dart:io';

abstract class Printable {
  void printInfo();
}

// Base class representing an item
class Item {
  late String name;
  late double price;

  Item(this.name, this.price);

  // Method to display information about the item
  void display() {
    print('Item: $name, Price: \$${price.toStringAsFixed(2)}');
  }
}

// Class representing a book that extends Item and implements Printable interface
class Book extends Item implements Printable {
  late String author;

  Book(String name, double price, this.author) : super(name, price);

  @override
  void display() {
    super.display();
    print('Author: $author');
  }

  @override
  void printInfo() {
    print('Printing book information...');
    display();
  }
}

// Class representing a list of items
class ItemList {
  List<Item> items = [];

  // Method to add an item to the list
  void addItem(Item item) {
    items.add(item);
  }

  // Method to display all items in the list
  void displayItems() {
    print('Items in the list:');
    for (var item in items) {
      item.display();
    }
  }
}

void main() {
  // Create a book instance
  var book = Book('The Great Gatsby', 12.99, 'F. Scott Fitzgerald');

  // Display book information
  book.printInfo();

  // Create a list of items
  var itemList = ItemList();

  // Add items to the list
  itemList.addItem(Item('Laptop', 999.99));
  itemList.addItem(Item('Phone', 499.99));
  itemList.addItem(book);

  // Display items in the list
  itemList.displayItems();

  // Demonstrate the use of a loop
  print('Loop demonstration:');
  for (var i = 0; i < 3; i++) {
    print('Iteration $i');
  }
}
