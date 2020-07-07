class RemovePasswordFromGyms < ActiveRecord::Migration[5.1]
  def change
    remove_column :gyms, :password_digest, :string
  end
end
