class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :user_name, presence: true
  validates :user_name, uniqueness: true

  has_one :cinema
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
