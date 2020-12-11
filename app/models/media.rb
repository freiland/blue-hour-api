class Media < ApplicationRecord
  validates :title, :author, presence: true

  scope :search, -> (title_param) { where("title ilike?", "%#{title_param}%")}