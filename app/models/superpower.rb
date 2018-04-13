class Superpower < ApplicationRecord
  has_many :superpower_superheroes
  has_many :superheroes, through: :superpower_superheroes
end
