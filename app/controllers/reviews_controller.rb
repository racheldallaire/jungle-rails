class ReviewsController < ApplicationController
  def create
    product_id = params[:product_id]
    rating = params[:review][:rating]
    review = params[:review][:description]
    reviewer = session[:user_id]

    new_review = Review.new({product_id: product_id, user_id: reviewer, rating: rating, description: review})

    if new_review.save
      redirect_to :back
    else
      redirect_to :back
      flash.now[:danger] = 'Your review was not saved.'
    end
  end
end
