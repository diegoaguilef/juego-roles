class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_permissions
  has_many :permissions, through: :user_permissions
  has_many :characters

  before_create :init_user

  def gm?
    role == "gm"
  end

  def admin?
    role == "admin"
  end

  def user?
    role == "user"
  end

  private

  def init_user
    self.role = 'user'
  end
end
