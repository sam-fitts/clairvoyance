class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :proposal
      t.references :business
      t.integer :amount

      t.timestamps
    end
  end
end
