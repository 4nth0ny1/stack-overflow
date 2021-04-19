class AddSidebarToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :upvotes, :integer
    add_column :posts, :answers, :integer
    add_column :posts, :views, :integer
  end
end
