class Photo < ApplicationRecord

  has_many(:comments, :class_name => "Comment", :foreign_key => "photo_id")
  has_many(:likes, :class_name => "Like", :foreign_key => "photo_id")
  has_many(:fans, :through => :likes, :source => :user)

  belongs_to :user

  validates :user_id, :presence => true


  #
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  #
  # has_many(:photos, :class_name => "Photo", :foreign_key => "user_id")
  # has_many(:comments, :class_name => "Comment", :foreign_key => "user_id")
  # has_many(:likes, :class_name => "Like", :foreign_key => "user_id")
  # has_many(:liked_photos, :through => :likes, :source => :photo)
  #
  # validates :username, :presence => true, :uniqueness => true

end
