class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  rolify

  validates :number, presence: true


  belongs_to :university
  has_many :enrollments 
  has_many :courses

  before_create :user_token 
  before_update :user_token

  private

  def user_token
    token = SecureRandom.base64(64)
    self.token = token
  end 

  
end
