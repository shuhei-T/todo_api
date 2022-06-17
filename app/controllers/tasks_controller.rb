class TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end

  def create
    Task.create(task_params)
    head :created
  end

  private

  def task_params
    params.require(:task).permit(:name, :is_done)
  end
end
