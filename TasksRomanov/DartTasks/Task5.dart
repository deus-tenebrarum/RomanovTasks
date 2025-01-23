class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void searchByAuthor(String author) {
    books.where((book) => book.author == author).forEach((book) {
      print("Книга: ${book.title}, Автор: ${book.author}, Год: ${book.year}");
    });
  }

  void searchByYear(int year) {
    books.where((book) => book.year == year).forEach((book) {
      print("Книга: ${book.title}, Автор: ${book.author}, Год: ${book.year}");
    });
  }
}

void main() {
  Library library = Library();
  library.addBook(Book("Война и мир", "Лев Николаевич Толстой", 1869));
  library.addBook(Book("Зов Ктулху", "Говард Филлипс Лавкрафт", 1928));
  library.addBook(Book("Тёмная башня", "Стивен Кинг", 1982));

  library.searchByAuthor("Лев Николаевич Толстой");
  library.searchByYear(1982);
}