class RemoveClickCountColumnFromUrls < ActiveRecord::Migration
  def change
  	remove_column :urls, :click_count
  end
end
