class PagesController < ApplicationController
  def index; end

  def landing
    redirect_to home_path if user_signed_in?
  end

  def pages; end
end
