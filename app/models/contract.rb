class Contract < ApplicationRecord
  belongs_to :agency, class_name: 'User'
  belongs_to :proposal
  mount_uploader :pdf, PdfUploader

end
