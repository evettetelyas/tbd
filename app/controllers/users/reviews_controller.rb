class Users::ReviewsController < ApplicationController
  def create
    create_params = review_params
    create_params[:reviewer_id] = current_user.id
    user = User.find_by(username: params[:username])
    user.reviews.create(create_params)
    redirect_to user_show_path(user.username)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
