json.extract! article, :id, :name, :description, :auteurs, :date_pub, :created_at, :updated_at
json.url article_url(article, format: :json)
