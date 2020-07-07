class AddImageToGyms < ActiveRecord::Migration[5.1]
  def change
    add_column :gyms, :image, :string
  end
end
