class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :account
      t.integer :gender
      t.integer :age
      t.float :height
      t.float :weight
      t.timestamps
    end
  end
end
