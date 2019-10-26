class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :seller, index: true, foreign_key: { to_table: :users }
      t.string :name
      t.text :description
      t.string :images

      t.timestamps
    end
  end
end
