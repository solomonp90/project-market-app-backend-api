class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :signature
      t.string :kind, null: false, :default => 'Contract'
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
