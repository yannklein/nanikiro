class Closet < ApplicationRecord
  belongs_to :user
  has_many :wears
  validates :name, presence: true, uniqueness: true
end
