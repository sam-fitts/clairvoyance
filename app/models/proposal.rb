class Proposal < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one :contract
end
