class AddAttachmentPhotowithlicenseToLicenses < ActiveRecord::Migration
  def self.up
    change_table :licenses do |t|
      t.attachment :photowithlicense
    end
  end

  def self.down
    remove_attachment :licenses, :photowithlicense
  end
end
