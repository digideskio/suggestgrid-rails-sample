class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :genres,  array: true
      t.string :title
      t.string :overview
      t.string :poster_path
      t.date :release_date

      t.timestamps null: false
    end
  end
end
