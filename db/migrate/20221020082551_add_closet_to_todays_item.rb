class AddClosetToTodaysItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :todays_items, :closet, null: false, foreign_key: true
  end
end
