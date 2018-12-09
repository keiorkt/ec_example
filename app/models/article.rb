class Article < ApplicationRecord
    belongs_to :article_category
    validates :article_category, :title, :body, presence: true
end
