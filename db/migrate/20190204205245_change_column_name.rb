class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :image_url, :publicacion
  end
end
