class CreatePostTags < ActiveRecord::Migration[6.1]
  def change
    create_table :post_tags do |t|
      t.references :tag
      t.references :post

      t.timestamps
    end
  end
end
