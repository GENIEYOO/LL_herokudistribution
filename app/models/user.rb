class User < ActiveRecord::Base



def admin?
  if role == "admin"
    true
  else
    false
  end
end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
