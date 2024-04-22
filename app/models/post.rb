class Post < ApplicationRecord
    validates :title, presence: {message: "Um... you're missing the title here"}
    validates :content, presence: {message: "Post with nothing... Really? C'mon I know you can do better"}
    validates :user_id, presence: {message: "And the user that made this?  Where did they go?"}
    validates :answers_count, numericality: {greater_than_or_equal_to: 0, message: "HOW IN THE WORLD YOU CAN HAVE LESS THAN 0 COMMENTS?!"}
    validates :likes_count, numericality: {greater_than_or_equal_to: 0, message: "Negative likes.. why? who damaged you?"}
    
    before_save  :set__default_pub

    belongs_to :user
    has_many :posts_tags
    has_many :tags, through: :post_tags
    has_many :posts
    belongs_to :post

    before_validation :normalize_title
    before_validation :remove_whitespaces

    private

    def set__default_pub
        self.published_at ||= Time.current
    end

    def normalize_title
        self.title = title.downcase.titleize
    end

    def remove_whitespaces
        self.title = name.strip
    end
end