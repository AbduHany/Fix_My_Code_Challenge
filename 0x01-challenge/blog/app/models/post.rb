class Post < ApplicationRecord
  has_many  :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  validates :body,  presence: true

  #online boolean attribute in Post object
  attribute :online, :boolean, default: true
end
