class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :author
    validates :summary
    validates :impressions
  end
end
