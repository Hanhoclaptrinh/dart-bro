class Book {
  String? title;
  String? author;
  int? year;
  String? status;

  Book(this.title, this.author, this.year, this.status);

  void display() {
    print('Title: $title');
    print('Author: $author');
    print('Year: $year');
    print('Status: $status');
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added successfully!');
  }

  void borrowBook(String? title) {
    bool found = false;
    books.forEach((book) {
      if (book.title == title && book.status == 'Available') {
        book.status == 'Borrowed';
        found = true;
        print('You borrowed ${title} successfully!');
      }
    });
    if (!found) {
      print('Book not found or already borrowed!');
    }
  }

  void returnBook(String? title) {
    bool found = false;
    books.forEach((book) {
      if (book.title == title && book.status == 'Borrowed') {
        book.status == 'Available';
        found = true;
        print('You returned ${title} successfully!');
      }
    });
    if (!found) {
      print('Book not found or not borrowed!');
    }
  }

  void showAllBooks() {
    books.forEach((book) {
      book.display();
    });
  }
}

void main() {
  var b1 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Available');
  var b2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960, 'Available');
  var library = Library();
  library.addBook(b1);
  library.addBook(b2);
  library.borrowBook('The Great Gatsby');
  library.returnBook('To Kill a Mockingbird');
  library.showAllBooks();
}
