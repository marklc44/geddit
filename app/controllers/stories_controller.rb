class StoriesController < ApplicationController
	def index
		@stories = Story.order("created_at DESC")
	end

	def new
		@story = Story.new
	end

	def create
		@story = Story.new

		@story.title = params[:story][:title]
		@story.url = params[:story][:url]
		@story.username = params[:story][:username]

		@story.save

		redirect_to root_path
	end
end
