class TasksController < ApplicationController
before_action :set_task, only: [:edit, :update, :show, :destroy]

  def newTask
    @task = Task.new
  end
  def index
    @task = Task.all
  end

  def prorg
    @prorg = Task.where("subject = 'study'")
    @task = @prorg
    render 'index'
  end

  def free
    @free = Task.where("subject = 'free'")
    @task = @free
    render 'index'
  end

  def misc
    @misc = Task.where("subject = 'misc'")
    @task = @misc
    render 'index'
  end
# helper_method :study

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render 'edit'
    end
  end

  def create
      @task = Task.new(task_params);
      @task.user = current_user
   if @task.save
     redirect_to task_path(@task)
   else
     render 'newTask'
   end
  end

  def edit
  end

  def show
  end

private

  def task_params
   params.require(:task).permit(:title, :due, :info, :progress, :subject)
  end

  def set_task
    @task = Task.find(params[:id]);
  end

end
