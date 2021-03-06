class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :opinion
      t.float :rating
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
