class Task < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_many :users, through: :lists

  def list?(c_user, task)
    @list_task = List.where(user: c_user, task: task).pluck(:id).join(' ').to_s
  end
  
end
