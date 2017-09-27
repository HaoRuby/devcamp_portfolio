class Portfolio < ApplicationRecord
  # validation
  validates_presence_of :title, :body, :main_image, :thumb_image

  # query all portfolio has subtitle = angular
  def self.angular
    where(subtitle: 'angular')
  end
  # or can use this way
  # scope :angular, -> { where(subtitle: 'angular') }
end
