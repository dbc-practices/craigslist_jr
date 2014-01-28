class CreatePostCatTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :category
      t.string :title
      t.string :content
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
