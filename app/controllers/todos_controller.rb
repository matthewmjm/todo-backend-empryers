class TodosController < ApplicationController

    before_action :find_todo, only: [:update, :destroy]

    def index
        @todos = Todo.all
        render json: @todos
    end

    def show
        @todo = Todo.find(params[:id])
        render json: @todo
    end
    
    def create
        # @todo = Todo.create(
        #     title: params[:title],
        #     content: params[:content],
        #     urgent: params[:urgent],
        #     done: params[:done]
        # )
        @todo = Todo.create(todo_params)
        render json: @todo, status: :created
    end
    
    def update
        # @todo = Todo.find(params[:id])
        @todo.update(todo_params)
        render json: @todo
    end
    
    def destroy
        # @todo = Todo.find(params[:id])
        @todo.destroy
        render status: :no_content
    end

    private

    def find_todo
        @todo = Todo.find(params[:id])
    end

    def todo_params
        params.require(:todo).permit(:title, :content, :urgent, :done)
    end

end
