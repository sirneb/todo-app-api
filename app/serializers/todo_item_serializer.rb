class TodoItemSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :name, :description, :is_done

  has_one :todo_list
end
