class Classification < ActiveRecord::Base

  validates :genre_id, :presence => true
  validates :book_id, :presence => true

  belongs_to :genre , :class_name => "Genre", :foreign_key => "genre_id"
  belongs_to :book , :class_name => "Book", :foreign_key => "book_id"

end
