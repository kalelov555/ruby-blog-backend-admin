class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :images, array: true, default: []
      t.boolean :visible, default: true
      t.string :slug

      t.timestamps
    end
  end
end
