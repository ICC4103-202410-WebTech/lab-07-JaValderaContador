class User < ApplicationRecord
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    has_many :posts

    validates :name, presence: {message: "Please anter a name, I don't think you're nameless"}
    validates :email, presence: {message: "You  must enter your email address"}, uniqueness: {message: "This emial already exist. (You late LMAO)"}, format: {with: EMAIL_REGEX, message: "Email is not valid, please try again"}
    validates :password, presence: {message: "YOU NEED A PASSWORD!!!"}, length: {minimum: 6, message: "Password must have at least 6 chars"}

    before_validation :normalize_name
    before_validation :normalize_email
    before_validation :remove_whitespaces

    private
    def normalize_name
        self.name = name.downcase.titleize
    end
    
    def normalize_email
        self.email = email.downcase
    end

    def remove_whitespaces
        self.name = name.strip
        self.email = email.strip
    end
end