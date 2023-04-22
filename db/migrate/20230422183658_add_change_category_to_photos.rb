class AddChangeCategoryToPhotos < ActiveRecord::Migration[7.0]
  def change
    # reversible do |direction|
    #   direction.up {change_column :photos, :category, null:true, foreign_key: true}
    #   direction.down {change_column :photos, :category, null:false, foreign_key: true}
      
    # end
    change_column_null :photos, :category_id, true
    
  end
end
