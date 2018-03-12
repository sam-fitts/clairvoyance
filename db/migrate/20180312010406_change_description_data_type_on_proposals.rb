class ChangeDescriptionDataTypeOnProposals < ActiveRecord::Migration[5.1]
  def change
    change_column :proposals, :description, :text
  end
end
