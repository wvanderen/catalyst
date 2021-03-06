class User < ActiveRecord::Base
  require 'bcrypt'
  
  has_one :avatar, dependent: :destroy
  accepts_nested_attributes_for :avatar
  
  
  before_save {self.role ||= :standard }
  before_save {self.experience ||= 0}

  
  
  validates :username, 
            uniqueness: { case_sensitive: false },
            presence: true,
            length: { minimum: 1, maximum: 20}
  validates :experience, presence: true
  validates :email,
        presence: true,
        uniqueness: { case_sensitive: false },
        length: {minimum: 3, maximum: 254 }
    
  enum role: [:standard, :admin]
  
    
    

        
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
         
end
