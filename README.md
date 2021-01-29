# アプリケーション名

## アプリケーションの機能一覧
・新規投稿機能
・ユーザー管理機能
・マイページ表示機能
・投稿詳細表示機能
・投稿編集機能
・投稿削除機能
・コメント投稿機能

## 使用言語・技術
・HTML
・CSS
・Ruby
・Ruby on Rails
・MySQL
・GitHub

## usersテーブル
| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
has_many: posts
has_many: comments

## postsテーブル
| Column      | Type       | Option                         |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| author      | string     | null: false                               |
| category_id | integer    | null: false                    |
| summary     | text       | null: false                    |
| impressions | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association
belongs_to: user
has_many: comments

## commentsテーブル
| Column  | Type       | Option                         |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign/key: true |
| post    | references | null: false, foreign_key: true |

### Association
belongs_to: user
belongs_to: post
