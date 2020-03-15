class User < ApplicationRecord
    has_many :user_images
    has_many :images, through: :user_images
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, presence: true
end
