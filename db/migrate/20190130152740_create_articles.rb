class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.string :title
    	t.string :content
      t.timestamps
      # t.belongs_to :user, index: true
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
