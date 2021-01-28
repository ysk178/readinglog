class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  with_options presence: true do
    validates :title
    validates :author
    validates :summary
    validates :impressions
  end
  
  def self.search(search)
    if search != ""
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end