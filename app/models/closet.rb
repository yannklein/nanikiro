class Closet < ApplicationRecord
  belongs_to :user
  has_many :wears
  validates :name, presence: true, uniqueness: true

  def todays(category)
    TodaysItem.where(closet: self, weared_on: Date.today).find { |item| item.wear.category == category}
  end
end
