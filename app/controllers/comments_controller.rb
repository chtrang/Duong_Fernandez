class CommentsController < ApplicationController

	def create
		@book = Book.find(params[:book_id])
		@comment = @book.comments.new(comment_params)
		@comment.user_id = current_user.id

		if @comment.save
			redirect_to @comment.book, notice: I18n.t('books.comment')
		else
			render text: 'Error!'
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:message, :user_id)
	end
end