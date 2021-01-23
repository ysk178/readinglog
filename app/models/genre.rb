class Genre < ApplicationRecord
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '文学・評論' },
    { id: 2, name: 'ノンフィクション' },
    { id: 3, name: 'ビジネス・経済' },
    { id: 4, name: '歴史・地理' },
    { id: 5, name: '政治・社会' },
    { id: 6, name: '芸能・エンタメ' },
    { id: 7, name: 'アート・建築・デザイン' },
    { id: 8, name: '人文・思想・宗教' },
    { id: 9, name: 'くらし・健康・料理' },
    { id: 10, name: 'IT・サイエンス' },
    { id: 11, name: '趣味・実用' },
    { id: 12, name: '教育・自己啓発' },
    { id: 13, name: 'スポーツ・アウトドア' },
    { id: 14, name: '事典・年鑑・本・ことば' },
    { id: 15, name: '音楽' },
    { id: 16, name: '旅行・紀行' },
    { id: 17, name: '絵本・児童書' },
    { id: 18, name: 'コミックス' },
    { id: 19, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
