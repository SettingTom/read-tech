class BooksController < ApplicationController
  def index
    @book = Book.all.order('created_at DESC')
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
    @mentalmap = Mentalmap.new
    @mentalmaps = @book.mentalmaps
    @curiosity_gap = CuriosityGap.new
    @curiosity_gaps = @book.curiosity_gaps
    @resume = Resume.new
    @resumes = @book.resumes
    @visualizing = Visualizing.new
    @visualizings = @book.visualizings
    @summarizing = Summarizing.new
    @summarizings = @book.summarizings
    @questioning = Questioning.new
    @questionings = @book.questionings
  end

  private

  def book_params
    params.require(:book).permit(:book_name).merge(user_id: current_user.id)
  end

end
