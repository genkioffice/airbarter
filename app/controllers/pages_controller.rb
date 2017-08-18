class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout "layouts/landing", only:[:home]

  def home
  end

  def profile
    @user = current_user
  end

end
