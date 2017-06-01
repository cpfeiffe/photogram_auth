class Like < ApplicationRecord

  validates :username, :presence => true, :uniqueness => true

  validates :photo_id, :presence => true, :uniqueness => true

  belongs_to :photo

end
