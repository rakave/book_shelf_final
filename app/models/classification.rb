class Classification < ActiveRecord::Base

  belongs_to :genre , :class_name => "Genre", :foreign_key => "genre_id"
  belongs_to :book , :class_name => "Book", :foreign_key => "book_id"

end
