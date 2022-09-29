require '/Users/saritaradia/Desktop/Projects/book_store/lib/BooksRepository.rb'

RSpec.describe BooksRepository do 
def reset_books_table
  seed_sql = File.read('spec/seeds_books.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
  connection.exec(seed_sql)
end

  before(:each) do
    reset_books_table
  end

  it "returns all books" do
    repo = BooksRepository.new
    books = repo.all
    expect(books.length).to eq(2)
    expect(books[0].id).to eq('1')
    expect(books[0].title).to eq('The Midnight Library')
    expect(books[0].author_name).to eq('Matt Haig')
  end
end
 