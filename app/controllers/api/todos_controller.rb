class Api::TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    render json: current_user.todos.order(:id)
  end

  def show
    render json: Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.new(todo_params)

    if @todo.save
      render json: current_user.todos
    else
      render json: {status: :unprocessable_entity}
    end
  end

  def update
    @todo.update(todo_params)
    render json: @todo
  end

  def destroy
    @todo.destroy
    render json: current_user.todos.order(:id)
  end

  private
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:title, :n_pomodoros)
    end
end
