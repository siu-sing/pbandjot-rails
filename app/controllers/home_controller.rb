class HomeController < ApplicationController
  def index
    if user_signed_in?
      @records = Record.where(user_id: current_user.id).order(pb_date: :DESC)
    end
  end
end
