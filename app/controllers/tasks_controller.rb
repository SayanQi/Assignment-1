class TasksController < ApplicationController

  # skip_before_action :find_task, only: %i[new, create, index]
  before_action :find_task, except: [:new, :create, :index]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # binding.pry
    if @task.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def index
    @tasks = Task.order(id: :desc)
  end

  def update
    # @task = Task.find(params[:id])

   if @task.update(task_params)
    redirect_to root_path
   else
    render :edit, status: :unprocessable_entity
   end
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def show
  end

  def destroy
    # before action should be added
    Task.destroy(params[:id])
    render turbo_stream: turbo_stream.remove("task_#{params[:id]}")
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :pending_date, :completed, :active)
  end

  def find_task
    @task = Task.find(params[:id])
  end

end
