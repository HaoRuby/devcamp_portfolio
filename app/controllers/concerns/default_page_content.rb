module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  # Setting default page title to Devcamp Portfolio
  def set_title
    @page_title = 'Devcamp Portfolio'
  end
end
