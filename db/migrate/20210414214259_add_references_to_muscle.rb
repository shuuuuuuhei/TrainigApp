class AddReferencesToMuscle < ActiveRecord::Migration[6.0]
  def change
    add_reference :muscles, :training_menu, foreign_key: true
  end
end
