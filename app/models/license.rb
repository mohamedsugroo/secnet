class License < ApplicationRecord
  belongs_to :user

  has_attached_file :photowithlicense, styles: { large: "500x500", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photowithlicense, content_type: /\Aimage\/.*\z/
end
