class ListsController < ApplicationController

    def create
      @list = List.new
      @list.user_id = current_user.id
      @list.task_id = params[:task_id]
      @list.save
      puts @list
      redirect_to tasks_path, notice: 'Has completado tu tarea :)'
    end
    
    def destroy
      @list = List.find(params[:id])
      @list.destroy
      redirect_to tasks_path, notice: 'Has cancelado tarea seleccionada :/'
    end

    private

    def list_params
      params.require(:list).permit(:task_id, :user_id)
    end
    
end
