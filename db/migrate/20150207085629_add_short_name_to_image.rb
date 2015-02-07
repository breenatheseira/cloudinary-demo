class AddShortNameToImage < ActiveRecord::Migration
  def change
    add_column :images, :short_name, :string
  end
end
