class AddImageColumnToMakers < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :kind, :string
  end
end
