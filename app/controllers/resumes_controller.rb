class ResumesController < ApplicationController
  def new
    @resume = Resume.new
    @book = Book.find(params[:book_id])
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to book_path(params[:book_id])
    else
      render :new
    end
  end

  private

  def resume_params
    params.permit(:resume_chapter, :resume_motive_text).merge(book_id: params[:book_id])
  end
end