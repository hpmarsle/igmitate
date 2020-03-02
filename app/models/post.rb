class Post < ApplicationRecord
    belongs_to :user
    belongs_to :hashtag, optional: true
    validates :caption, presence: true, length: { minimum: 3 } 

    scope :hash_tagged, -> { where("hashtag_id")}

    def post_user 
        self.user.username
    end

    # validates :hashtag, presence: true
    def hashtag_attributes=(hashtag_attribute)
        hash_tag = Hashtag.find_or_create_by(hashtag_attribute)
        hash_tag.posts << self
    end

    def hashtag_attributes=(hashtag_attributes)
        if hashtag_attributes[:name] && !hashtag_attributes[:name].empty?
            self.hashtag = Hashtag.where(name: hashtag_attributes[:name]).first_or_create do |h|
                h.name = hashtag_attributes[:name]
            end
        end
    end
end
