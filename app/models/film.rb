class Film < ActiveRecord::Base
  belongs_to :ceremony
  has_many :nominations
  has_many :profiles, through: :viewings
end