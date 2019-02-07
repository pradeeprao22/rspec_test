class AddTitleToPart < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :title, :string
  end
end
