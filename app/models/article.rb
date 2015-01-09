class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags
  scope :article_of_yesterday_desc, -> {where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight).order(created_at: :desc)}
  scope :search_by_title, -> (name) { where("title like ?", "%#{name}%")}
end

