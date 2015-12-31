class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books/all
  # GET /books/all.json
  # GET /books/all.xml
  def all
    @books = Book.all
  end


  # GET /books/available
  # GET /books/available.json
  # GET /books/available.xml
  def available
    @books = Book.available
  end

  # GET /books/reserved
  # GET /books/reserved.json
  # GET /books/reserved.xml
  def reserved
    @books = Book.reserved
  end

  # GET /books/1
  # GET /books/1.json
  # GET /books/1.xml
  def show
    @comments = @book.comments
    @comment = @book.comments.new
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end


  def reserve_it
    @ref_book = params[:ref_book]
    @book = Book.find(@ref_book)
    @book.situation = 2
    @book.save
    redirect_to '/books/available', notice: I18n.t('books.reserved') 
  end


  def render_it
    @ref_book = params[:ref_book]
    @book = Book.find(@ref_book)
    @book.situation = 1
    @book.save
    redirect_to '/books/reserved', notice: I18n.t('books.rendered')
  end


  def delete
    @ref_book = params[:ref_book]
    @book = Book.find(@ref_book)
    @book.destroy
    redirect_to '/books/all', notice: I18n.t('books.destroyed')
  end


  # POST /books
  # POST /books.json
  def create
    @book = Book.create(book_params)
    @book.situation = 1

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: I18n.t('books.created') }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: I18n.t('books.updated') }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: I18n.t('books.destroyed') }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :synopsis, :cover, :note, :situation)
    end

end
