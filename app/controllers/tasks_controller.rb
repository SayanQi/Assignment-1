class TasksController < ApplicationController

  # skip_before_action :find_task, only: %i[new, create, index]
  before_action :find_task, except: [:new, :create, :index]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "Successfully Created"
      redirect_to root_path
    else
      flash[:danger] = "Failed to update user: #{@task.errors.messages }"
      redirect_to root_path, status: :unprocessable_entity
    end

    rescue StandardError => e
      flash[:danger] = "An error occurred: #{e.message.to_s}"

  end

  def index
    @tasks = Task.order(id: :desc)
  end

  def update
    if @task.update(task_params)
      flash[:success] = "Successfully Updated"
      redirect_to root_path
    else
      flash[:danger] = "Failed to update user: #{@task.errors.messages }"
      render :edit, status: :unprocessable_entity
    end

    rescue StandardError => e
      flash[:danger] = "An error occurred: #{e.message.to_s}"
  end

  def edit
  end

  def show
  end

  def destroy
    @task.destroy
    render turbo_stream: turbo_stream.remove("task_#{params[:id]}")
    flash[:success] = "Successfully Deleted"
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :pending_date, :completed, :active)
  end

  def find_task
    @task = Task.find(params[:id])
  end

end
