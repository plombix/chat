class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates_uniqueness_of :email



  def name
    email.split('@')[0]
  end
end
