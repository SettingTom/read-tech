class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @product = @user.books.order('created_at DESC')
  end
end
