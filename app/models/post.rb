class Post < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :title
    validates :author
    validates :summary
    validates :impressions
  end
end
