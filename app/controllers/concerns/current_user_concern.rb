module CurrentUserConcern
  extend ActiveSupport::Concern

  # Overide devise current_user
  # Return: User if login else return an OpenStruct object if not login
  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: 'Guest User')
  end
end