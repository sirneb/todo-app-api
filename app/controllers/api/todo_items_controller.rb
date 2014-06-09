module Api
  class TodoItemsController < ApplicationController
    def index
      render json: TodoList.find(params[:todo_list_id]).todo_items
    end

  end
end
