class AddSlugToChatrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chatrooms, :slug, :string
  end
end
