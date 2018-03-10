class AddAttachmentAadharImageToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :aadhar_image
    end
  end

  def self.down
    remove_attachment :users, :aadhar_image
  end
end
