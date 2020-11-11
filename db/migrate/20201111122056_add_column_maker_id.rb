class AddColumnMakerId < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :maker_id, :integer
  end
end
