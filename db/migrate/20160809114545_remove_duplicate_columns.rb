class RemoveDuplicateColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :todos, :string, :string
  end
end
