class AddPdfToProposalsAndContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :proposals, :pdf, :string
    add_column :contracts, :pdf, :string
  end
end
