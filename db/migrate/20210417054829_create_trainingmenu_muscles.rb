class CreateTrainingmenuMuscles < ActiveRecord::Migration[6.0]
  def change
    create_table :trainingmenu_muscles do |t|
      t.references :training_menu, index: true, foreign_key: true
      t.references :muscle, index: true, foreign_key: true
      t.timestamps 
    end
  end
end
