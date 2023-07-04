class User < ApplicationRecord
has_secure_password

validates :username, presence: true , length: { minimum: 5 }
validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
validates :role, presence: true, inclusion: { in: [1, 2] }

has_many :posts
has_many :comments
end
