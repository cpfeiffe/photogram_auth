class Comment < ApplicationRecord

  belongs_to :photo
  belongs_to :user, :through => :photo

  validates :user_id, :presence => true
  validates :photo_id, :presence => true
  validates :body, :presence => true

end
