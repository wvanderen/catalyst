class User < ActiveRecord::Base
  require 'bcrypt'
  
  validates :experience, presence: true
  validates :email,
        presence: true,
        uniqueness: { case_sensitive: false },
        length: {minimum: 3, maximum: 254 }
        
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
end
