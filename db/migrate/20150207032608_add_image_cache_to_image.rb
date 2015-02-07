class AddImageCacheToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_cache, :string
  end
end
