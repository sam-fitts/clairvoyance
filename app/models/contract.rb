class Contract < ApplicationRecord
  belongs_to :proposal
  mount_uploader :pdf, PdfUploader

end
