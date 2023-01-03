class HomeController < ApplicationController
  before_action :authenticate_user!

  def pages
  end
end
