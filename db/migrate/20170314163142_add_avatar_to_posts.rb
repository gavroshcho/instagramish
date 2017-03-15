class AddAvatarToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :avatars, :string
  end
end
