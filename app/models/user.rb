class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
         
  validates :username, uniqueness: true, presence: true
  validates_presence_of :first_name, :last_name

  has_many :reviews

  def average_rating
    reviews.average(:rating)
  end
end
