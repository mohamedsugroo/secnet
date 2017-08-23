class Contractor < ApplicationRecord
    belongs_to :user

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


    def avatar_medium
      self.avatar(:medium)
    end

    def avatar_thumb
      self.avatar(:thumb)
    end

    def full_name
      "#{first_name + " " + last_name}"
    end
end
