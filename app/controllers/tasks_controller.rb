class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    tasks = Task.all
    @task = tasks.find(params[:id])
  end
end
