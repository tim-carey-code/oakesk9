# frozen_string_literal: true

class Blog < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_rich_text :content

  paginates_per 12
end
