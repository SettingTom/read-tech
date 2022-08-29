class MentalmapsController < ApplicationController
  def new
    @mentalmap = Mentalmap.new
  end

  def create
    @mentalmap = Mentalmap.new(mentalmap_params)
    if @mentalmap.save
      redirect_to book_path(params[:book_id])
    else
      render book_path(params[:book_id])
    end
  end

  private

  def mentalmap_params
    params.require(:mentalmap).permit(:why_text, :what_text, :how_text).merge(book_id: params[:book_id])
  end
end
