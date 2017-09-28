module CurrentUserConcern
  extend ActiveSupport::Concern

  # Overide devise current_user
  # Return: User if login else return an guest user object if not login
  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = 'Guest User'
    guest.email = 'guestuser@example.com'
    guest
  end
end