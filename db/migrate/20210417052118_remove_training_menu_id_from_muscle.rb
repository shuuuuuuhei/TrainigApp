class RemoveTrainingMenuIdFromMuscle < ActiveRecord::Migration[6.0]
  def change
    remove_reference :muscles, :training_menu
  end
end
