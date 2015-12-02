class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.integer :genre_id
      t.integer :book_id

      t.timestamps

    end
  end
end
