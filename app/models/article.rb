class Article < ApplicationRecord

    validates :title, presence: true
    validates :image, presence: true
    validates :content, presence: true
end
