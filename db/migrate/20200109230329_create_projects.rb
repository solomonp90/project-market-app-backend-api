class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :stipulation
      t.string :kind, null: false, :default => 'Project'
      t.belongs_to :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
