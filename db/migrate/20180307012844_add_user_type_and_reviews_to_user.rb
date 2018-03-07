class AddUserTypeAndReviewsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :agency, :boolean
    add_column :users, :reviews, :integer
    add_column :users, :reviews_content, :string
  end
end
