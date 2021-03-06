class TeamTodo < ApplicationRecord
  validates :title, presence: true

  belongs_to :team_project
  has_many :user_team_todos, dependent: :destroy
  has_many :users, through: :user_team_todos

end
