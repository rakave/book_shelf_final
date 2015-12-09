class Author < ActiveRecord::Base

  has_many :books , :class_name => "Book", :foreign_key => "author_id"

end
