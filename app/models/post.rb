class Post < ApplicationRecord
    belongs_to :user
    belongs_to :post
    has_many :posts
    #has_many :tags
end