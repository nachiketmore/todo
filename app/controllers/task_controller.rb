class TaskController < ApplicationController
    def list
        @tasks = Task.all
    end

    def create
        @tasks = Task.new(task_params)

        if @task.save
            redirect_to :action => 'list'
        else
            render :action => 'new'
        end
    end

    def update
        @tasks = Task.find(params[:id])

        if @task.update(task_params)
            redirect_to :action => 'show', :id => @task
        else
            render :action => 'edit'
        end
    end

    def destroy
        Task.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    def new
        @tasks = Task.new
    end

    def show
        @task = Task.find(params[:id])
    end

    def edit
        @task = Task.find(params[:id])
    end

    def task_params
        params.require(:task).permit(:title, :description, :due_date)
    end
end
