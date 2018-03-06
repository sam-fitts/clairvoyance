class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.integer :bid_amount
      t.references :agency_id
      t.references :project_id
      t.string :description

      t.timestamps
    end
  end
end
