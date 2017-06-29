class Book < ActiveRecord::Base
  has_attached_file :preview, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\z/

  belongs_to :user
  has_and_belongs_to_many :categories
  
end
