class ArticleCategory < ApplicationRecord
    has_many :articles
    validates :name, presence: true, uniqueness: true
end
