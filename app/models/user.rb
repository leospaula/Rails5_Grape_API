class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  ## Validations
  validates :email, presence: true, uniqueness: true, case_sensitive: false
  
   ## Callbacks
  before_save do
    self.email = email.downcase if email_changed?
  end
end
