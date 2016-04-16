class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages
  has_many :chatrooms, through: :messages

  validates :username, presence: true, uniqueness: true
end
