class AddUserToErrands < ActiveRecord::Migration[5.2]
  def change
    add_reference :errands, :user, foreign_key: true
  end
end
