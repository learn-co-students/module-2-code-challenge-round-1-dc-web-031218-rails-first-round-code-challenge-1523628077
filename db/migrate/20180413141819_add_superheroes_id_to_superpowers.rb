class AddSuperheroesIdToSuperpowers < ActiveRecord::Migration[5.0]
  def change
    add_column :superpowers, :superheroes_id, :integer
  end
end
