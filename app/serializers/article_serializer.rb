class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :images, :visible, :created_at, :slug
end
