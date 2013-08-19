class WelcomeController < ApplicationController
  def index
    user = current_user
    if user
      redirect_to "/users"
    end
    expires_in 3.minutes, public: true
  end
end