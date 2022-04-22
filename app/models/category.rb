class Category < ActiveRecord::Base
  has_many :nominations
end