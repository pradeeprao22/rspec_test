class AddPartToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :parts, :user
  end
end
