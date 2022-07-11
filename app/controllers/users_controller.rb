class UsersController < ApplicationController
  def index
    @users = User.all
    render template: "users/index"
  end

  def show
    @user = User.find_by(id: params["id"])
    render template: "users/show"
  end
end
