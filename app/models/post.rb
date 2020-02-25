class Post < ApplicationRecord
    belongs_to :user
    belongs_to :hashtag
    accepts_nested_attributes_for :hashtag
end
