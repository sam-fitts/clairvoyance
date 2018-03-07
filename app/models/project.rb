class Project < ApplicationRecord
  belongs_to :business, class_name: 'User'
  has_many :proposals
end
