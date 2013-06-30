class DropPortfoliosTable < ActiveRecord::Migration
  def up
    drop_table :portfolios
  end

  def down
  end
end
