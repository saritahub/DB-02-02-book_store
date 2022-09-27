require '/Users/saritaradia/Desktop/Projects/book_store/lib/books.rb'

class BooksRepository

  # Selecting all records
  # No arguments
  def all
    # Executes the SQL query:
    # SELECT id, name, author_name FROM books;

    # Returns an array of Books objects.
    sql = 'SELECT id, title, author_name FROM books;'
    result_set = DatabaseConnection.exec_params(sql, [])

    books = []

    result_set.each do |thebook|
      book = Books.new
      book.id = thebook['id']
      book.title = thebook['title']
      book.author_name = thebook['author_name']
      books << book
    end
    return books
  end

end