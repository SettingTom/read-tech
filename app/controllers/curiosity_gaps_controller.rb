class CuriosityGapsController < ApplicationController
  def new
    @quriosity_gap = CuriosityGap.new
    @book = Book.find(params[:book_id])
  end

  def create
    @quriosity_gap = CuriosityGap.new(quriosity_gap_params)
    if @quriosity_gap.save
      redirect_to book_path(params[:book_id])
    else
      render :new
    end
  end

  private

  def quriosity_gap_params
    params.permit(:already_text, :unknown_text).merge(book_id: params[:book_id])
  end
end
