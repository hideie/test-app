json.extract! article, :id, :title, :body, :post_date, :is_public, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)