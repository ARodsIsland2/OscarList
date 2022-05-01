class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :viewings
  has_many :films, through: :viewings
end