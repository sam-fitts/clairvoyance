class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :proposal_id
      t.references :business_id
      t.integer :amount

      t.timestamps
    end
  end
end
