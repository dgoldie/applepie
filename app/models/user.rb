class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :phone, :password, :password_confirmation, :remember_me
  
  has_many :questions
  has_many :answers
  has_many :comments

  has_reputation :votes, source: {reputation: :votes, of: :questions}, aggregated_by: :sum

end
