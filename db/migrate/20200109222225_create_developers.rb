class CreateDevelopers < ActiveRecord::Migration[6.0]
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :image
      t.string :experience
      t.string :skill
      t.string :kind, null: false, :default => 'Developer'


      t.timestamps
    end
  end
end
