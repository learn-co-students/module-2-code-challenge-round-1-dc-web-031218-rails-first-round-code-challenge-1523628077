class Superhero < ApplicationRecord
  belongs_to :superpower
  # Make sure no two superheroes have the same super name.
  validates :super_name, uniqueness: true
  validates :super_name, presence: true
  validates :name, presence: true

end
