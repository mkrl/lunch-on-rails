class Place < ApplicationRecord
  validates :name, presence: true,
                    length: { minimum: 3 }
  validates :address, presence: true,
                    length: { minimum: 5 }
  validates :rating, presence: true,
                    length: { maximum: 1 }
end
