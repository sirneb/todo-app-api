require 'spec_helper'

describe Api::TodoListsController do
  describe '#index' do
    it 'returns all the todo lists' do
      todo_list1 = create :todo_list
      todo_list2 = create :todo_list
      create_list(:todo_item, 3, todo_list: todo_list1)

      get 'api/todo_lists'

      todo_lists = JSON.parse(response.body)['todo_lists']

      expect(todo_lists.count).to be 2
      expect(todo_lists.first.keys).to match_array(expected_keys)
      expect(todo_lists.first['todo_item_ids'].count).to be 3
    end
  end

  def expected_keys
    %w(id name todo_item_ids)
  end
end
