class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.datetime :start_date
      t.datetime :end_time

      t.timestamps
    end
  end
end
