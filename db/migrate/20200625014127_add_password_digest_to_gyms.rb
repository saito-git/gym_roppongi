class AddPasswordDigestToGyms < ActiveRecord::Migration[5.1]
  def change
    add_column :gyms, :password_digest, :string
  end
end
