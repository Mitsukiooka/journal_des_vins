class ChangeColumnWines < ActiveRecord::Migration[6.0]
  def change
    change_column :wines, :year, :string
  end
end
