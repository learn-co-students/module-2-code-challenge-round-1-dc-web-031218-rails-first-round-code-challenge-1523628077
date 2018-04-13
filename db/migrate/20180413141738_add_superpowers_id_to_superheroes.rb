class AddSuperpowersIdToSuperheroes < ActiveRecord::Migration[5.0]
  def change
    add_column :superheroes, :superpowers_id, :integer
  end
end
