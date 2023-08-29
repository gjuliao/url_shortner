class Click < ApplicationRecord
  belongs_to :link, foreign_key: 'link_id'
end
