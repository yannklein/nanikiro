class AddTypeAndSeasonToWears < ActiveRecord::Migration[6.1]
  def change
    add_column :wears, :type, :integer
    add_column :wears, :season, :integer
  end
end
