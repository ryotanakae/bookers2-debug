class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :use_id
      t.integer :book_id

      t.timestamps
    end
  end
end
