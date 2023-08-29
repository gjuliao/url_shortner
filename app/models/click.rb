class Click < ApplicationRecord
  belongs_to :link, foreign_key: 'link_id'

  def update_click_link_count
    link.click_count = link.clicks.count
    save
  end
end
