class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :image
      t.string :domain

      t.timestamps
    end
  end
end
