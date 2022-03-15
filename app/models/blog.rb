class Blog < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_rich_text :content
  has_one_attached :photo
end
