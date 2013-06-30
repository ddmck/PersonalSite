class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :github

      t.timestamps
    end
  end
end
