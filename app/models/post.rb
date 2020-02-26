class Post < ApplicationRecord
    belongs_to :user
    belongs_to :hashtag
    # accepts_nested_attributes_for :hashtag

    def hashtag_attributes=(hashtag_attribute)
        # hash_tag = Hashtag.find_or_create_by(hashtag_attribute)
        self.build_hashtag(hashtag_attribute)
    end
end
