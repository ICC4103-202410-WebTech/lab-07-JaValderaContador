class Tag < ApplicationRecord
    has_many :post_tags
    has_many :post, through: :post_tags

    validates :name, presence: {message: "Just... not in blank, ok?"}, uniqueness: {message: "This tag already exist, LOL"}
end