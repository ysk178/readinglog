class Post < ApplicationRecord
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :author
    validates :category_id
    validates :summary
    validates :impressions
  end
end
