class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :user_name
      t.text :description
      t.timestamps
    end
  end
end
