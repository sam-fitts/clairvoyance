class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.integer :bid_amount
      t.references :agency
      t.references :project
      t.string :description

      t.timestamps
    end
  end
end
