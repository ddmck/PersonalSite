class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
