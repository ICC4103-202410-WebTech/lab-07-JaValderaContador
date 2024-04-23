class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    validates :name, presence: {message: "Just... not in blank, ok?"}, uniqueness: {message: "This tag already exist, LOL"}

    before_validation :remove_whitespaces

    private

    def remove_whitespaces
        self.name = name.strip
    end
end