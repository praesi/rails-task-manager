class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def show
    set_a_todo
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    redirect_to todo_path(@todo)
  end

  def edit
    set_a_todo
  end

  def update
    set_a_todo
    @todo.update(todo_params)
    redirect_to todo_path(@todo)
  end

  def destroy
    set_a_todo
    @todo.destroy
    redirect_to todos_path
  end


  private
  def set_a_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :description, :done)
  end
end
