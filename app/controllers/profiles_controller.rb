class ProfilesController < ApplicationController
  
  def show
    @user = User.find_by(user_name: params[:user_name])
    @posts = User.find_by(user_name: params[:user_name]).posts.order('created_at DESC')
    puts "os posts do mnalucasdc"
    puts @posts
  end

  def edit
    @user = User.find_by(user_name: params[:user_name])
  end

end
