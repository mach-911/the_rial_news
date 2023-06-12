class CommentsController < ApplicationController
	def create
		@comment = current_user.comments.new(comment_params)
		if !@comment.save

			puts "=============#{ @comment} =============="
			puts "#{params[:id]}"
			flash[:notice] = @comment.errors.full_messages.to_sentence
		end
		redirect_to publications_path			
	end

	private

	def comment_params
		params
			.require(:comment)
			.permit(:content)
			.merge(publication_id: params[:id])
	end
end
