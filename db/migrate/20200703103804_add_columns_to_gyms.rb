class AddColumnsToGyms < ActiveRecord::Migration[5.1]
  def change
    add_column :gyms, :title, :string
    add_column :gyms, :body, :text
    add_column :gyms, :image_id, :string
  end
end
