class PostCommentsController < InheritedResources::Base
	def create
		@post_comment = PostComment.new(params[:post_comment])

		if @post_comment.save
			;flash[:notice] = '...and now you\'re part of the conversation'
			redirect_to(@post_comment.post)
		else
			flash[:notice] = 'Something fucked up... #[@post_comment.errors]'
			redirect_to(@post_comment.post)
		end
	end
end
