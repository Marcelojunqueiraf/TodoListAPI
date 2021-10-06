class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @todos = User.find(params[:user_id]).todos
    render json: @todos
  end

  # GET /todos/1
  def show
    render json: @todo
  end

  # POST /todos
  def create
    @todo = Todo.new(todo_params)
    if @todo.checked == nil
      @todo.update(checked:false)
    end
    if @todo.save
      render json: @todo, status: :created, location: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todos/1
  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todos/1
  def destroy
    @todo.destroy
    render json: {description: "object destroyed"}, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = User.find(params[:user_id]).todos.find(params[:tid])
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.permit(:title, :description, :checked, :user_id)
    end
end
