class RenameTypeInWears < ActiveRecord::Migration[6.1]
  def change
    rename_column :wears, :type, :wear_type
  end
end
