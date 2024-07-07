void main() {
  Book book = Book(title: 'Blue Elephant', author: 'Ahmed Murad', numPage: 300);
  book.display();
}

class Book {
  final String title;
  final String author;
  final int numPage;
  Book({required this.title, required this.author, required this.numPage});
  display() {
    print('title is :$title ');
    print('author is: $author  ');
    print('number of pages is : $numPage  page ');
  }
}
