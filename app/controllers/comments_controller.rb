class CommentsController < ApplicationController

	def create
		@book = Book.find(params[:book_id])
		@comment = @book.comments.new(comment_params)
		if @comment.save
			redirect_to @comment.book, notice: 'Comment was succesfully created.'
		else
			render text: 'Error!'
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:user_name, :message)
	end
end