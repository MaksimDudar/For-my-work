class Track < ApplicationRecord
  has_many :users
  has_many :comments, dependent: :destroy
  def self.search(search)
   where("truck_by LIKE ?", "%#{search}%").or where("truck_rus LIKE ?", "%#{search}%").or where("semi_trailer LIKE ?", "%#{search}%")
end
end
