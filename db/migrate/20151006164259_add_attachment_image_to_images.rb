class AddAttachmentImageToImages < ActiveRecord::Migration
  def up
    add_attachment :images, :image
  end

  def down
    remove_attachment :images, :image
  end
end
