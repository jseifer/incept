class User < ActiveRecord::Base
	rolify
	acts_as_followable
	acts_as_follower
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  has_many :task_completions
  has_many :tasks, :through => :task_completions
  has_many :task_ownerships, :class_name => "Task", :foreign_key => "user_id"
  
end
