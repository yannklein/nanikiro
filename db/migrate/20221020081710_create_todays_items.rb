class CreateTodaysItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todays_items do |t|
      t.date :weared_on
      t.references :wear, null: false, foreign_key: true

      t.timestamps
    end
  end
end
