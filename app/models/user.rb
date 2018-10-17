class User < ApplicationRecord
  has_secure_password
  validates :first_name, :last_name, presence: true
  validates :email, presence: true
  
  def authenticate_admin?
    self.is_admin?
  end 
end
