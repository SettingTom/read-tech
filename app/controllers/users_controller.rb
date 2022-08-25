class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = @user.books.order('created_at DESC')
  end
end
