class AccountToProfile < ActiveRecord::Migration[6.0]
  def change
    rename_table :accounts, :profiles
  end
end
