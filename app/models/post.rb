class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy # this way if post gets deleted, comments get deleted as well.
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
