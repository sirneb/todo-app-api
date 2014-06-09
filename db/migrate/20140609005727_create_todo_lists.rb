class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :name
    end
  end
end
