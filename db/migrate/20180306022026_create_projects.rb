class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :budget
      t.references :business_id
      t.string :tags
      t.string :name
      t.datetime :duration
      t.string :difficulty

      t.timestamps
    end
  end
end
