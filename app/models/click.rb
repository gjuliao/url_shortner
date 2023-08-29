class Click < ApplicationRecord
  belongs_to :link, foreign_key: 'link_id'

  def update_click_link_count
    link.likes_counter = link.clicks.likes_count
    save
  end
end
