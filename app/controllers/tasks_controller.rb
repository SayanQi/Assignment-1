class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def index
    @tasks = Task.order(id: :desc)
  end

  def update
    @task = Task.find(params[:id])

   if @task.update(task_params)
    redirect_to tasks_path
   else
    render :edit, status: :unprocessable_entity
   end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
  end

  def destroy
    if @task.destroy(params[:id])
      redirect_to tasks_path
    end
  end

  private

  def task_params



    params.require(:task).permit(:name, :description, :pending_date, :completed,:active)
  end

end
