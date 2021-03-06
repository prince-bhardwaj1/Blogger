class Article < ApplicationRecord
  include Visible
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: { large: "600x600", medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
