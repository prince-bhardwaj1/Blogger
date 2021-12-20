class AddAttachmentImageToArticles < ActiveRecord::Migration[6.1]
  def change
    add_attachment :articles, :image
  end

  def self.down
    remove_attachment :articles, :image
  end
end
