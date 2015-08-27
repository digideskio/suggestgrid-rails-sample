class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :userid
      t.integer :itemid
      t.integer :rating

      t.timestamps null: false
    end
  end
end