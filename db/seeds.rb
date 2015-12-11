usernames = ["angela", "bobby", "caroline", "david", "elena"]

usernames.each do |username|
  user = User.create
  user.username = username
  user.email = "#{username}@example.com"
  user.password = "12341234"
  user.save
end

puts "There are now #{User.count} users in the database."

genre_list = [
  {:title => "Drama"},
  {:title => "Classic" },
  {:title => "Comic/Graphic Novel" },
  {:title => "Crime/Detective" },
  {:title => "Fable" },
  {:title => "Fairy tale" },
  {:title => "Fanfiction" },
  {:title => "Fantasy" },
  {:title => "Fiction narrative" },
  {:title => "Fiction in verse" },
  {:title => "Folklore" },
  {:title => "Historical fiction" },
  {:title => "Horror" },
  {:title => "Humor" },
  {:title => "Legend" },
  {:title => "Magical Realism" },
  {:title => "Metafiction" },
  {:title => "Mystery" },
  {:title => "Mythology" },
  {:title => "Mythopoeia" },
  {:title => "Realistic fiction" },
  {:title => "Science fiction" },
  {:title => "Short story" },
  {:title => "Suspense/Thriller" },
  {:title => "Tall tale" },
  {:title => "Western" },
  {:title => "Biography/Autobiography" },
  {:title => "Essay" },
  {:title => "Narrative nonfiction" },
  {:title => "Speech" },
  {:title => "Laboratory Report" },
  {:title => "Textbook" },
  {:title => "Reference book" },
  {:title => "Self Help" }
]

genre_list.each do |genre_list|
  genre = Genre.new
  genre.title = genre_list[:title]
  genre.save
end

puts "There are now #{Genre.count} Genres in the database."

author_list = [
  { :name => "William Shakespeare"},
  { :name => "Agatha Christie"},
  { :name => "Barbara Cartland"},
  { :name => "Danielle Steel"},
  { :name => "Harold Robbins"},
  { :name => "Sidney Sheldon"},
  { :name => "Enid Blyton"},
  { :name => "Dr. Seuss"},
  { :name => "Gilbert Patten"},
  { :name => "J. K. Rowling"},
  { :name => "Jackie Collins"},
  { :name => "Horatio Alger, Jr."},
  { :name => "R. L. Stine"},
  { :name => "Dean Koontz"},
  { :name => "Nora Roberts"},
  { :name => "Stephen King"},
  { :name => "Louis L'Amour"},
  { :name => "Erle Stanley Gardner"},
  { :name => "Janet Dailey"},
  { :name => "Edgar Wallace"},
  { :name => "Robert Ludlum"},
  { :name => "James Patterson"},
  { :name => "Jeffrey Archer"},
  { :name => "Stan and Jan Berenstain"},
  { :name => "John Grisham"},
  { :name => "Zane Grey"},
  { :name => "Irving Wallace"},
  { :name => "J. R. R. Tolkien"},
  { :name => "Mickey Spillane"},
  { :name => "C. S. Lewis"},
  { :name => "Dan Brown"},
  { :name => "Ann M. Martin"},
  { :name => "Arthur Hailey"},
  { :name => "Beatrix Potter"},
  { :name => "Michael Crichton"},
  { :name => "Richard Scarry"},
  { :name => "Clive Cussler"},
  { :name => "Alistair MacLean"},
  { :name => "Ken Follett"},
  { :name => "Debbie Macomber"},
  { :name => "EL James"},
  { :name => "Catherine Cookson"},
  { :name => "Stephenie Meyer"},
  { :name => "Norman Bridwell"},
  { :name => "David Baldacci"},
  { :name => "Roald Dahl"},
  { :name => "Evan Hunter"},
  { :name => "Andrew Neiderman"},
  { :name => "Roger Hargreaves"},
  { :name => "Anne Rice"},
  { :name => "Robin Cook"},
  { :name => "Wilbur Smith"},
  { :name => "Erskine Caldwell"},
  { :name => "Judith Krantz"},
  { :name => "Eleanor Hibbert"},
  { :name => "Lewis Carroll"},
  { :name => "Denise Robins"},
  { :name => "Ian Fleming"},
  { :name => "Rex Stout"},
  { :name => "Frank G. Slaughter"},
  { :name => "Edgar Rice Burroughs"},
  { :name => "John Creasey"},
  { :name => "James Michener"},
  { :name => "Mary Higgins Clark"},
  { :name => "Penny Jordan"},
  { :name => "Patricia Cornwell"},
  { :name => "Tom Clancy"}
]

author_list.each do |author_list|
  author = Author.new
  author.name = author_list[:name]
  author.save
end

puts "There are now #{Author.count} Authors in the database."
