class VisualizingsController < ApplicationController
  def new
    @visualizing = Visualizing.new
    @book = Book.find(params[:book_id])
  end

  def create
    @visualizing = Visualizing.new(visualizing_params)
    if @visualizing.save
      redirect_to book_path(params[:book_id])
    else
      render :new
    end
  end

  private

  def visualizing_params
    params.permit(:premise, :explanation, :conclusion).merge(book_id: params[:book_id])
  end
end
