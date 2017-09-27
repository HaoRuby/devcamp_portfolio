class Portfolio < ApplicationRecord
  include Placeholder
  # references
  has_many :technologies
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
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  end
end
