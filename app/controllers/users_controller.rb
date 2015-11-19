class UsersController < ApplicationController
  def new
  	# form to sign up
    @user = User.new
  end

  def create
  	# method to create new user
  end

  def show
  	# user profile page with option to create or join game and view past games participated in
  end
end
