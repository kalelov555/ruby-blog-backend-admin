class Article < ApplicationRecord
  before_create :slugify, :default_visible
  before_update :slugify, 

  def slugify
    self.slug = title.parameterize
  end

  def default_visible
    self.visible = true
  end
end
