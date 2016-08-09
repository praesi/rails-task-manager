class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :string

      t.timestamps
    end
  end
end
