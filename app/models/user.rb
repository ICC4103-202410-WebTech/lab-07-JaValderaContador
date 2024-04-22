class User < ApplicationRecord
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: {message: "Please anter a name, I don't think you're nameless"}
    validates :email, presence: {message: "You  must enter your email address"}, uniqueness: {message: "This emial already exist. (You late LMAO)"}, format: {message: "Email is not valid, please try again"}
    validates :password, presence: {message: "YOU NEED A PASSWORD!!!"}, length: {minimum: 6, message: "Password must have at least 6 chars"}

    has_many :posts
end