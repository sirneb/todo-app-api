FactoryGirl.define do
  factory :todo_list do
    sequence(:name) { |n| "Todo List \##{n}" }
  end

  factory :todo_item do
    sequence(:name) { |n| "Todo List \##{n}" }
    description 'This should be a description...'
    is_done false
    todo_list
  end
end
