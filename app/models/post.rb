class Post < ApplicationRecord
    belongs_to :user
    has_many :posts_tags
    has_many :tags, through: :post_tags
    has_many :posts
    belongs_to :post
end