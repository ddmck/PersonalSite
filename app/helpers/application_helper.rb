module ApplicationHelper

  # Give full title in browser
  def full_title(page_title)
    base_title = "D on Rails"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
