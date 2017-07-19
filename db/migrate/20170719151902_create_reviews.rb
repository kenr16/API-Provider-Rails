class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :content
      t.integer :place_id

      t.timestamps
    end
  end
end
