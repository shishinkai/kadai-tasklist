class AddUserRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :user, foreign_key: true
  end
  def down
    remove_column :tasks, :pass_digets, :string
  end
end
