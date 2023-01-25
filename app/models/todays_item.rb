class TodaysItem < ApplicationRecord
  belongs_to :wear, foreign_key: "nanikiro_wear_id"
  belongs_to :closet, foreign_key: "nanikiro_closet_id"
end
