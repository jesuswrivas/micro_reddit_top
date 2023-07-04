class User < ApplicationRecord
has_secure_password

validate :username, presence: true , length: { minimum: 5 }
validates :email, presence: true, format: { with: /\A\w+@\w+\z/ }
validates :role, presence: true, inclusion: { in: [1, 2] }

has_many :posts
has_many :comments, through: :posts
end
