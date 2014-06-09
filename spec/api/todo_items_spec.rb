require 'spec_helper'

describe Api::TodoItemsController do
  describe "#index" do
    it 'returns all of the todo items of a todo list' do
      todo_list1 = create :todo_list
      create_list(:todo_item, 3, todo_list: todo_list1)

      get "/api/todo_lists/#{todo_list1.id}/todo_items"

      todo_items = JSON.parse(response.body)['todo_items']

      expect(todo_items.count).to be 3
      expect(todo_items.first.keys).to match_array(expected_keys)
    end
  end

  def expected_keys
    %w(id name description is_done todo_list_id)
  end
end
