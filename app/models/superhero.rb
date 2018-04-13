class Superhero < ApplicationRecord
  has_one :superpower
  validates :superpower, uniqueness: :true 
end
