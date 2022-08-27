class MentalmapsController < ApplicationController
  def create
    if Mentalmap.create(mentalmap_params)
      redirect_to book_path(params[:book_id])
    else
      render book_path(params[:book_id])
    end
  end

  private

  def mentalmap_params
    params.require(:mentalmap).permit(:text).merge(book_id: params[:book_id])
  end
end
