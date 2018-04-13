class Superhero < ApplicationRecord
  belongs_to :superpower

  validates :name, uniqueness: true

  # def superpower_name=(name)
  #   @superpower = Superpower.find_by(name: name)
  #   self.superpower_id << @superpower.id
  # end
  #
  # def superpower_name
  #   self.superpower.name
  # end
end
