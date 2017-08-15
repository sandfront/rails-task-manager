class TasksController < ApplicationController

  before_action :set_task, only: [:show, :create, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
