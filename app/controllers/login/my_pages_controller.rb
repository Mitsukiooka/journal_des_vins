class Login::MyPagesController < Login::ApplicationController
  before_action :set_profile, only: [:edit, :update]

  def index
    @profile = current_user.profile
  end
end