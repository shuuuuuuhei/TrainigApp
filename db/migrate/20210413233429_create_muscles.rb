class CreateMuscles < ActiveRecord::Migration[6.0]
  def change
    create_table :muscles do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
