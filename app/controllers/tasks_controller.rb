class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new

  end

  def create
    Task.create(title: params[:title])
    redirect_to "/tasks"
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to "/tasks"
  end
end
  