class Genre < ActiveRecord::Base

  validates :title, :presence => true, :uniqueness => true

  has_many :classifications , :class_name => "Classification", :foreign_key => "genre_id"
  has_many :books, :through => :classifications

end
