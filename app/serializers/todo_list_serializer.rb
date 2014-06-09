class TodoListSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name

  has_many :todo_items
end
