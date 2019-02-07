class AddDescriptionToPart < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :description, :string
  end
end
