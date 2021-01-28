class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  with_options presence: true do
    validates :title
    validates :author
    validates :summary
    validates :impressions
  end
end
