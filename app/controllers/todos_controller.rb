class TodosController < ApplicationController

    def index
        @todos = Todo.all

        render json: @todos
    end

    # def show
    #     @todo = Todo.find(params[:id])
    #     render json: @todo
    # end

    # def create
    #     @todo = Todo.create(
    #         title: (params[:title])
    #     )
    #     render json: @todo
    # end

end
