class CreateSuperpowerSuperheroes < ActiveRecord::Migration[5.0]
  def change
    create_table :superpower_superheroes do |t|
      t.integer :superpower_id
      t.integer :superhero_id
    

      t.timestamps
    end
  end
end
