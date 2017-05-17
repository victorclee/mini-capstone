class ChangePhotoToUrlAddNameToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :name, :string
    rename_column :images, :photo, :url
  end
end
