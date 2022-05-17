class CreateWears < ActiveRecord::Migration[6.1]
  def change
    create_table :wears do |t|
      t.string :type
      t.string :season
      t.string :color
      t.references :closet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
