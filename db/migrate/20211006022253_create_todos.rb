class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.integer :checked
      t.integer :user_id

      t.timestamps
    end
  end
end
