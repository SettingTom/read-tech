class SummarizingsController < ApplicationController
  def new
    @summarizing = Summarizing.new
    @book = Book.find(params[:book_id])
  end

  def create
    @summarizing = Summarizing.new(summarizing_params)
    if @summarizing.save
      redirect_to book_path(params[:book_id])
    else
      render :new
    end
  end

  private

  def summarizing_params
    params.permit(:summarizing_chapter, :summarizing_text).merge(book_id: params[:book_id])
  end
end
