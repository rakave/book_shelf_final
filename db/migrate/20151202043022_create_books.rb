class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :author_id
      t.integer :user_id
      t.string :blurb
      t.string :title
      t.string :image

      t.timestamps

    end
  end
end
