require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name| 
    puts "Processing #{csv_file_name} ........" 
    reader.read_in_csv_data csv_file_name
end

puts "Total stock value = #{reader.total_value_in_stock}"

print "Enter an ISBN ? "  
# STDIN.gets accepts a single line of data from 
# standard input (the keyboard) 
isbn = STDIN.gets.chomp 
puts "ISBN: #{isbn} ; Copies: #{reader.number_of_an_isbn(isbn)}."

print "Price limit (e.g. 12.99)? " 
# to_f converts a string to a float, e.g. "12.99".to_f  
max = STDIN.gets.chomp.to_f 
cheaper_books = reader.search(max)
cheaper_books.each {|book| puts book.isbn}