class Portfolio < ApplicationRecord
  # validation
  validates_presence_of :title, :body, :main_image, :thumb_image

  # query all portfolio has subtitle = angular
  def self.angular
    where(subtitle: 'angular')
  end
  # or can use this way
  # scope :angular, -> { where(subtitle: 'angular') }

  # Setting default data
  after_initialize :set_default

  def set_default
    self.main_image ||= 'http://via.placeholder.com/600x400'
    self.thumb_image ||= 'http://via.placeholder.com/350x200'
  end
end
