class Track < ApplicationRecord
  has_many :comments, dependent: :destroy
  def self.search(search)
   where("truck_by LIKE ?", "%#{search}%")
end
end
