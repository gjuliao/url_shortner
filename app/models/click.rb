class Click < ApplicationRecord
  belongs_to :link, foreign_key: 'link_id'
  after_create :update_click_link_count

  def update_click_link_count
    link = Link.find_by(id: self.link_id)
    if link
      link.update(click_count: link.click_count + 1)
    end
  end
end
