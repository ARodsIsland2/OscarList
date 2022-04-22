class Film < ActiveRecord::Base
  belongs_to :ceremony
  has_many :nominations
end