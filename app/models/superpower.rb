class Superpower < ApplicationRecord
  belongs_to :superheroes

  validates :name, presence: true
  validates :description, presence: true
end
