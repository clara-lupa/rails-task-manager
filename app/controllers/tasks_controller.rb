class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    tasks = Task.all
    @task = tasks.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    tasks = Task.all
    @task = tasks.find(params[:id])
  end

  def update
    tasks = Task.all
    @task = tasks.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    tasks = Task.all
    @task = tasks.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
