class AddUniquIndexToMuscle < ActiveRecord::Migration[6.0]
  def change
    remove_column :muscles, :name
    add_column :muscles, :name, :string, :unique => true
  end
end
