class Topic < ApplicationRecord
  # validation
  validates_presence_of :title
  # references
  has_many :blogs
end
