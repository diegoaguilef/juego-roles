class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:login]

  has_many :user_permissions
  has_many :permissions, through: :user_permissions
  has_many :characters

  validates :email, uniqueness: true
  validates_format_of :nickname, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  before_create :init_user

  attr_accessor :login

  def gm?
    role == "gm"
  end

  def admin?
    role == "admin"
  end

  def user?
    role == "user"
  end

  def self.find_for_database_authentication(warden_condition)
    conditions = warden_condition.dup
    login = conditions.delete(:login)
    where(conditions).where(
      ["lower(nickname) = :value OR lower(email) = :value",
       { value: login.strip.downcase }]).first

    #errors.add(:login, "Email, nickname o password inválido") unless u

  end

  private

  def init_user
    self.role = 'user'
  end
end
