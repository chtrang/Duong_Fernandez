class ReadersController < ApplicationController
  before_action :set_reader, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @readers = Reader.all
    respond_with(@readers)
  end

  def show
    @books = @reader.books
  end

  def new
    @reader = Reader.new
    respond_with(@reader)
  end

  def edit
  end

  def create
    @reader = Reader.new(reader_params)
    @reader.save
    respond_with(@reader)
  end

  def update
    @reader.update(reader_params)
    respond_with(@reader)
  end

  def destroy
    @reader.destroy
    respond_with(@reader)
  end


  private
    def set_reader
      @reader = Reader.find(params[:id])
    end

    def reader_params
      params.require(:reader).permit(:name, :email)
    end
end
