class Chatroom < ApplicationRecord
  has_many :messages
  has_many :users, through: :messages
  validates :topic, presence: true, uniqueness: true, case_sensitive: false

  before_create :slugify

  def to_param
    self.slug
  end

  def slugify
    self.slug = self.topic.downcase.gsub(" ", "-")
  end
end
