class User < ApplicationRecord
  has_many :projects, foreign_key: 'business_id'
  has_many :proposals, foreign_key: 'agency_id'
  has_many :contracts, foreign_key: 'agency_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
