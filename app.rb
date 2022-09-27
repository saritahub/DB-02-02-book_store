# file: app.rb

require_relative 'lib/database_connection'
require '/Users/saritaradia/Desktop/Projects/book_store/lib/BooksRepository.rb'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store')

# Perform a SQL query on the database and get the result set.
# sql = 'SELECT id, title FROM albums;'
# result = DatabaseConnection.exec_params(sql, [])
#
# # Print out each record from the result set .
# result.each do |record|
#   p record
# end
sql = 'SELECT id, title, author_name FROM books;'
result = DatabaseConnection.exec_params(sql, [])

result.each do |book|
  p book
end

#OUTPUT
# {"id"=>"1", "title"=>"Nineteen Eighty-Four", "author_name"=>"George Orwell"}
# {"id"=>"2", "title"=>"Mrs Dalloway", "author_name"=>"Virginia Woolf"}
# {"id"=>"3", "title"=>"Emma", "author_name"=>"Jane Austen"}
# {"id"=>"4", "title"=>"Dracula", "author_name"=>"Bram Stoker"}
# {"id"=>"5", "title"=>"The Age of Innocence", "author_name"=>"Edith Wharton"}