class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :books , :class_name => "Book", :foreign_key => "user_id"
  has_many :favorites , :class_name => "Favorite", :foreign_key => "user_id"
  has_many :comments , :class_name => "Comment", :foreign_key => "user_id"
  has_many :favorite_books, :through => :favorites, :source => :book

end
