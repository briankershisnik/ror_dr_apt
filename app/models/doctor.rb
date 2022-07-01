class Doctor < ApplicationRecord

  validates :first, :last:, :image, :specialty, :bio, presence: true
end
