class Proposal < ApplicationRecord
  belongs_to :agency, class_name: 'User'
  belongs_to :project
  has_one :contract
  mount_uploader :pdf, PdfUploader

end
