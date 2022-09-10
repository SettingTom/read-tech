class CuriosityGapsController < ApplicationController
  def new
    @curiosity_gap = CuriosityGap.new
    @book = Book.find(params[:book_id])
  end

  def create
    @curiosity_gap = CuriosityGap.new(curiosity_gap_params)
    if @curiosity_gap.save
      redirect_to book_path(params[:book_id])
    else
      render :new
    end
  end

  private

  def curiosity_gap_params
    params.permit(:already_text, :unknown_text).merge(book_id: params[:book_id])
  end
end
