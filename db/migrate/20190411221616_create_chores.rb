# frozen_string_literal: true

class CreateChores < ActiveRecord::Migration[5.2]
  def change
    create_table :chores do |t|
      t.string :chore_name, null: false
      t.date :due_date
      t.time :due_time
      t.boolean :done_status, null: false

      t.timestamps
    end
  end
end
