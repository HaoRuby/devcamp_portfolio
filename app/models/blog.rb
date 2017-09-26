class Blog < ApplicationRecord
  # define enum status for blog: draft or published
  enum status: { draft: 0, published: 1 }
  # use friendly_id: show title in url instead of id
  extend FriendlyId
  friendly_id :title, use: :slugged
end
