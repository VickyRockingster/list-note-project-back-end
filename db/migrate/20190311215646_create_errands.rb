class CreateErrands < ActiveRecord::Migration[5.2]
  def change
    create_table :errands do |t|
      t.string :errand_name, null: false
      t.string :location, null: false
      t.date :due_date
      t.time :due_time
      t.boolean :done_status, null: false

      t.timestamps
    end
  end
end
