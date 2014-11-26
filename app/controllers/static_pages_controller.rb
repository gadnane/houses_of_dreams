class StaticPagesController < ApplicationController
  def home
  	@property = current_user.properties.build if logged_in?
  end
end
