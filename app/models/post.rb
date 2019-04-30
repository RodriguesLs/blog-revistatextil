class Post < ApplicationRecord
  #paperclip
  has_attached_file :picture, styles: { big: "400x800>", thumb: "100x100", medium: "300x300", default_url: "/images/:style/missing.png" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
