class CreateTrainingMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :training_menus do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
