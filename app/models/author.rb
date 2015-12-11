class Author < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  has_many :books , :class_name => "Book", :foreign_key => "author_id", :dependent => :destroy

end
