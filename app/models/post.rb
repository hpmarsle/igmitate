class Post < ApplicationRecord
    belongs_to :user
    belongs_to :hashtag
    validates :caption, presence: true, length: { minimum: 3 }
    # accepts_nested_attributes_for :hashtag
    validates :hashtag, presence: true
    def hashtag_attributes=(hashtag_attribute)
        hash_tag = Hashtag.find_or_create_by(hashtag_attribute)
        hash_tag.posts << self
        # self.build_hashtag(hashtag_attribute)
    end
end
