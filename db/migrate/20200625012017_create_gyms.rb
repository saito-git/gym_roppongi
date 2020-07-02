class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :password_digest

      t.timestamps
    end
  end
end
