class UserController < ApplicationController
	def show
		@user = User.find(params[:id])
		@feed = Post.feed(@user)

	end
end
