json.extract! data_basis, :id, :name_article, :description, :auteurs, :date_pub, :categorie, :created_at, :updated_at
json.url data_basis_url(data_basis, format: :json)
