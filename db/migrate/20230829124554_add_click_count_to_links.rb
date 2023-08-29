class AddClickCountToLinks < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :click_count, :integer
  end
end
