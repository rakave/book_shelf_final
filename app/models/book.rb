class Book < ActiveRecord::Base

  validates :author_id, :presence => true
  validates :user_id, :presence => true
  validates :title, :presence => true, :uniqueness => { :scope => :author }
  validates :blurb, :presence => true

  has_many :classifications , :class_name => "Classification", :foreign_key => "book_id", :dependent => :destroy
  has_many :comments , :class_name => "Comment", :foreign_key => "book_id", :dependent => :destroy
  has_many :favorites , :class_name => "Favorite", :foreign_key => "book_id", :dependent => :destroy
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  belongs_to :author , :class_name => "Author", :foreign_key => "author_id"
  has_many :genres, :through => :classifications
  has_many :readers, :through => :favorites, :source => :user
end
