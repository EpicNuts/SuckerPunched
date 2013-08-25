class PostsController < ApplicationController
	def index
		#@content_first = 'This is some sample text for the SuckerPunched Webapp';
		#@content_second = 'This is some more sample text';
		@posts = Post.all
	end

	def new
		@post = Post.new
		@category = Category.all
	end

	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to posts_path, :notice => "All your information are belong to us."
		else
			render "new"
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to post_path, :notice => "You are now running the absolute lastest version of your post. You're welcome."
		else
			render "edit"
		end
	end

	def show
		@post = Post.find(params[:id])
	end
			
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => "Your Post will incinerated shortly."
	end
end
