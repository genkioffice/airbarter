class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout "layouts/landing", only:[:home]

  def home
  end

  def profile
    # we'll define this page as profile page
    @user = User.find(params[:id])
  end

end
