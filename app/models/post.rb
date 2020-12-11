class Media < ApplicationRecord
  validates :description, :author, presence: true

  scope :search, -> (author_param) { where("title ilike?", "%#{author_param}%")}