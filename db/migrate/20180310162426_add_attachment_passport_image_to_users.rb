class AddAttachmentPassportImageToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :passport_image
    end
  end

  def self.down
    remove_attachment :users, :passport_image
  end
end
