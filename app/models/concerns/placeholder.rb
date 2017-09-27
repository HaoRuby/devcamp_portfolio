module Placeholder
  extend ActiveSupport::Concern

  # Generate image link
  def self.image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end
end