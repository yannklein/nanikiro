class Closet < ApplicationRecord
  belongs_to :user
  has_many :wears, foreign_key: "nanikiro_closet_id"
  validates :name, presence: true, uniqueness: true

  def todays(category)
    TodaysItem.where(closet: self, weared_on: Date.today).find { |item| item.wear.category == category}
  end
end
