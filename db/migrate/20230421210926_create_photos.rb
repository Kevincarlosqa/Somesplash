class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.text :comment
      t.references :category, null: true, foreign_key: true

      t.timestamps
    end
  end
end
