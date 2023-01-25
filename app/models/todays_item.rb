class TodaysItem < ApplicationRecord
  self.table_name = "nanikiro_todays_items"
  belongs_to :wear, foreign_key: "nanikiro_wear_id"
  belongs_to :closet, foreign_key: "nanikiro_closet_id"
end
