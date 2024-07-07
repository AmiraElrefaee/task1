void main() {
  Book book = Book(title: 'Blue Elephant', author: 'Ahmed Murad', numPage: 300);
  book.display();
  Novel novel = Novel(
      title: 'Blue Elephant',
      author: 'Ahmed Murad',
      numPage: 300,
      genre: 'Narrative fiction');
  novel.display();
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

class Novel extends Book {
  final String genre;
  Novel(
      {required super.title,
      required super.author,
      required super.numPage,
      required this.genre});
  @override
  display() {
    super.display();
    print('the genre is : $genre');
  }
}
