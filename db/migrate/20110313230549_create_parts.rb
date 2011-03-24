class CreateParts < ActiveRecord::Migration
  def self.up
    create_table :parts do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :parts
  end
end
