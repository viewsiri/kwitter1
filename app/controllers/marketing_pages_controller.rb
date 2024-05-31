class MarketingPagesController < ApplicationController
  layout false

  def index
    if @current_user
      redirect_to "/posts"
    end
  end

end
