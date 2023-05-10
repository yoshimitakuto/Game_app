class Sale < ApplicationRecord
  belongs_to :user

  validates :quota, presence: true, numericality: true

end
