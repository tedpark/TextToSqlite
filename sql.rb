require 'sqlite3'


file = File.new("books.txt") //sample
string = []


file.each_line do |line|
  string << line
  puts (line)
end


db  = SQLite3::Database.new('/Users/ted/Desktop/vible.sqlite')
ins = db.prepare('insert into text (article) values (?)')
string.each { 
	|s| ins.execute(s) 
}