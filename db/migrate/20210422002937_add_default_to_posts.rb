class AddDefaultToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column_default :posts, :upvotes, 0
    change_column_default :posts, :views, 0
    remove_column :posts, :answers
  end
end
