class AddViewsToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :views, :integer
  end
end
