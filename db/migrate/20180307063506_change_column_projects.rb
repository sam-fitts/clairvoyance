class ChangeColumnProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :duration
    add_column :projects, :duration, :string
  end
end
