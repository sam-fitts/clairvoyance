class CorrectContranctsTableForeignKey < ActiveRecord::Migration[5.1]
  def change
    remove_reference :contracts, :business
    add_reference :contracts, :agency, foreign_key: {to_table: :users}
  end
end
