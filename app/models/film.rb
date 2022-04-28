class Film < ActiveRecord::Base
  belongs_to :ceremony
  has_many :nominations
  has_and_belongs_to_many :users
end