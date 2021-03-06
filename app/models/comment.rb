class Comment < ActiveRecord::Base

  belongs_to :book , :class_name => "Book", :foreign_key => "book_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"

  validates :user, :presence => true
  validates :book, :presence => true
  validates :body, :presence => true

end
