class UserShowFacade

  attr_reader :user

  def initialize(user)
    @user = user
  end

  def username
    user.username
  end

  def average_rating
    user.average_rating
  end

  def reviews
    user.reviews
  end
end
