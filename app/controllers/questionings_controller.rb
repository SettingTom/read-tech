class QuestioningsController < ApplicationController
  def new
    @questioning = Questioning.new
    @book = Book.find(params[:book_id])
  end

  def create
    @questioning = Questioning.new(questioning_params)
    if @questioning.save
      redirect_to book_path(params[:book_id])
    else
      render :new
    end
  end

  private

  def questioning_params
    params.permit(:answer1, :answer2, :answer3, :answer4, :answer5,
                  :answer6, :answer7, :answer8, :answer9, :answer10,
                  :answer11, :answer12, :answer13, :answer14, :answer15,
                  :answer17, :answer18, ).merge(book_id: params[:book_id])
  end
end
