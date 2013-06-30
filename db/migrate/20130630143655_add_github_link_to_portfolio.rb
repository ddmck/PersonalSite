class AddGithubLinkToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :github_link, :string
  end
end
