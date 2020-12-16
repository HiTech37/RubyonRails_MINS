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


  def self.renew(number, ntu)
    email = number + "@gmail.com"
    @user = User.find_by_email(email.downcase)
    if @user.blank? 
      @user = User.create!(email: email.downcase, password: number, number: number, 
                    first_name: "Uni", last_name: "Student", university_id: ntu.try(:id))
      @user.add_role :student
    end

    return @user 
  end

  private

  def user_token
    token = SecureRandom.base64(64)
    self.token = token
  end 

  
end
