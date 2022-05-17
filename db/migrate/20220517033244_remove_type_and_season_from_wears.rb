class RemoveTypeAndSeasonFromWears < ActiveRecord::Migration[6.1]
  def change
    remove_column :wears, :type, :string
    remove_column :wears, :season, :string
  end
end
