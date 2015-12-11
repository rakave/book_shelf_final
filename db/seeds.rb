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
  { :name => "Paulo Coelho"},
  { :name => "Tom Clancy"}
]

author_list.each do |author_list|
  author = Author.new
  author.name = author_list[:name]
  author.save
end

puts "There are now #{Author.count} Authors in the database."

book_list = [
  {:title => "The Alchemist",
    :blurb => "This is the story of Santiago, an Andalusian shepherd boy who dreams of travelling the world in search of a treasure as extravagant as any ever found. From his home in Spain he journeys to the exotic markets of Tangiers and then into the Egyptian desert, where a fateful encounter with the alchemist awaits him. The Alchemist is a transforming novel about the wisdom of listening to our hearts, learning to read the omens strewn along life's path and above all following our dreams.",
    :image => "http://www.iblist.com/thumbs/covers/56013.jpg",
    :author_id => 67
    },
    {:title => "Brida",
      :blurb => "This is the story of Brida, a young Irish girl, and her quest for knowledge. She has long been interested in various aspects of magic but is searching for something more. Her search leads her to people of great wisdom, who begin to teach Brida about the spiritual world. She meets a wise man who dwells in a forest, who teaches her about overcoming her fears and trusting in the goodness of the world; and a woman who teaches her how to dance to the music of the world, and how to pray to the moon. As Brida seeks her destiny, she struggles to find a balance between her relationships and her desire to become a witch.", :image => "http://www.iblist.com/thumbs/covers/60133.jpg",
      :author_id => 67
      },
      {:title => "By the River Piedra I Sat Down And Wept",
        :blurb => "A poetic story that reflects the depth of love and life. Rarely does an adolescent love reach its full potential. What happens when, after eleven years, two lovers come together? Pilar has become an independent and strong young woman. Her childhood friend has become a handsome spiritual leader. She has learned to bury her feelings, while he has turned to religion as a refuge from his inner conflicts. Together they embark on a journey that is initially fraught with difficulties, as blame and resentment resurface after years of being hidden. But by the River Piedra, in a small village in the French Pyrenees, they discuss many of life's big questions and reevaluate their own special relationship.",
        :image => "http://www.iblist.com/thumbs/covers/46770.jpg",
        :author_id => 67
        },
        {:title => "The Fifth Mountain",
          :blurb => "In the ninth century B.C., the Phoenician princess Jezebel orders the execution of all the prophets who refuse to seek safety in the land of Zarephath, where the unexpectedly finds true love with a young widow. But this newfound rapture is to be cut short, and Elijah sees all of his hopes and dreams irrevocably erased as he is swept into a whirlwind of events that threatens his very existence.",
          :image => "http://www.iblist.com/thumbs/covers/46771.jpg",
          :author_id => 67
          },
          {:title => "Veronika Decides To Die",
            :blurb => "Twenty-three-year-old Veronika seems to have everything she could wish for. She goes to popular night spots, dates attractive men, and has a caring family. Yet something is lacking in her life. So on the morning of November 11, 1997, Veronika decides to die.
            After she awakens from an overdose, Veronika finds she has only days to live. The story follows Veronika through those intense days as, to her own surprise, she finds herself drawn into the enclosed world of the local hospital she is staying in. In this heightened state she experiences things she has never allowed herself to feel: hatred, fear, curiosity, love, and sexual awakening. Gradually she discovers that every second of her existence is a choice between living and dying. Paulo Coelho's Veronika Decides to Die, based on his own moving personal experience, is about people who do not fit into patterns society considers to be normal. It is about madness and the need to find an alternative way of living for people who face prejudices because they think in a different way. In Veronika Decides to Die, Paulo Coelho invites the reader to discover the world that lies outside the routine and addresses the fundamental question asked by millions: what am I doing here today? and why do I go on living?",
            :image => "http://www.iblist.com/thumbs/covers/3430.jpg",
            :author_id => 67
            },
            {:title => "The Devil and Miss Prym",
              :blurb => "A community devoured by greed, cowardice, and fear. A man persecuted by the ghosts of his painful past. A young woman searching for happiness. In one eventful week, each will face questions of life, death, and power, and each will choose a path. Will they choose good or evil?
              In the remote village of Viscos -- a village too small to be on any map, a place where time seems to stand still -- a stranger arrives, carrying with him a backpack containing a notebook and eleven gold bars. He comes searching for the answer to a question that torments him: Are human beings, in essence, good or evil? In welcoming the mysterious foreigner, the whole village becomes an accomplice to his sophisticated plot, which will forever mark their lives.",
              :image => "http://www.iblist.com/thumbs/covers/3429.jpg",
              :author_id => 67
              },
              {:title => "Eleven Minutes",
                :blurb => "The story of Maria, a young girl from a Brazilian village, whose first innocent brushes with love leave her heartbroken. At a tender age, she becomes convinced that she will never find true love, instead believing that Love is a terrible thing that will make you suffer.... A chance meeting in Rio takes her to Geneva, where she dreams of finding fame and fortune. Instead, she ends up working as a prostitute.
                In Geneva, Maria drifts further and further away from love as she develops a fascination with sex. Eventually, Maria's despairing view of love is put to the test when she meets a handsome young painter. In this odyssey of self-discovery, Maria has to choose between pursuing a path of darkness - sexual pleasure for its own sake - or risking everything to find her own - inner light - and the possibility of sacred sex - sex in the context of love.",
                :image => "http://www.iblist.com/thumbs/covers/14458.jpg",
                :author_id => 67
                },
                {:title => "The Zahir",
                  :blurb => "Set in Paris and in the enchanting landscape of central Asia, this new novel by the author of the international bestsellers The Alchemist and Eleven Minutes follows the journey of a man obsessed with finding the wife who left him without an explanation.
                  The narrator of The Zahir is a bestselling novelist who lives in Paris and enjoys all the privileges that money and celebrity bring. His wife of ten years, Esther, is a war correspondent who, despite her professional success and freedom from the conventional constraints of marriage, is facing an existential crisis. When she disappears along with a friend, Mikhail, who may or may not be her lover, the authorities question the narrator. Was Esther kidnapped, killed, or did she simply abandon a marriage that left her unfulfilled? The narrator doesn't have any answers but he has plenty of questions of his own.

                  Then one day Mikhail, the man with whom Esther was last seen, finds the narrator and promises to take him to his wife. In his attempt to recapture a love lost, the narrator discovers something unexpected about himself.

                  A haunting and redemptive story about the dark side of obsession, The Zahir explores its potential to both fulfill our dreams and to destroy them. It is also a thoughtful meditation on faith, celebrity, marriage -- and their relationships to freedom and creativity.",
                  :image => "http://www.iblist.com/thumbs/covers/46768.jpg",
                  :author_id => 67
                  },
                  {:title => "The Witch of Portobello",
                    :blurb => "This is the story of Athena, or Sherine, to give her the name she was baptised with. Her life is pieced together through a series of recorded interviews with those people who knew her well or hardly at all -- parents, colleagues, teachers, friends, acquaintances, her ex-husband.
                    The novel unravels Athena's mysterious beginnings, via an orphanage in Romania, to a childhood in Beirut. When war breaks out, her adoptive family move with her to London, where a dramatic turn of events occurs...

                    Athena, who has been dubbed 'the Witch of Portobello' for her seeming powers of prophecy, disappears dramatically, leaving those who knew her to solve the mystery of her life and abrupt departure.",
                    :image => "http://www.iblist.com/thumbs/covers/46772.jpg",
                    :author_id => 67
                  }
                ]

                users = User.all
                books = Book.all
                genres = Genre.all


                book_list.each do |book_list|

                  book = Book.new
                  book.title = book_list[:title]
                  book.blurb = book_list[:blurb]
                  book.image = book_list[:image]
                  book.author_id = book_list[:author_id]
                  book.user_id = rand(1..users.count)
                  book.save

                  puts book.errors.full_messages
                end


                puts "There are now #{Book.count} Books in the database."

                books.each do |book|
                  rand(6).times do
                    comment = book.comments.build
                    comment.user = users.sample
                    comment.body = Faker::Hacker.say_something_smart
                    comment.save
                  end
                end

                puts "There are now #{Comment.count} Comments in the database."

                books.each do |book|
                  users.sample(rand(users.count)).each do |user|
                    favorite = book.favorites.build
                    favorite.user = user
                    favorite.save
                  end
                end

                puts "There are now #{Favorite.count} Favorites in the database."

                books.each do |book|
                  genres.sample(rand(1..4)).each do |genre|
                    classification = book.classifications.build
                    classification.genre = genre
                    classification.save
                  end
                end

                puts "There are now #{Classification.count} Classifications in the database."
