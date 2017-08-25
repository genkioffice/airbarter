class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout "layouts/landing", only:[:home]

  def home
    # @user = current_user
    # @logined_transactions
    @unlogined_transactions = Transaction.where(status: "proposed")
  end

  def profile
    # we'll define this page as profile page
    @user = User.find(params[:id])
  end

end
