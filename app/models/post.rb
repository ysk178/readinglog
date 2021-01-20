class Post < ApplicationRecord
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :author
    validates :category_id
    validates :summary
    validates :impressions
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :genre_id, numericality: { other_than: 1 }
end
