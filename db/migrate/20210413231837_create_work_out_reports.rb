class CreateWorkOutReports < ActiveRecord::Migration[6.0]
  def change
    create_table :work_out_reports do |t|

      t.timestamps
    end
  end
end
