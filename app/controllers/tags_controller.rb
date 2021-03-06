class TagsController < ApplicationController
	before_action :require_login, only: [:destroy]
	
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		Tag.find(params[:id]).destroy

		flash.notice = 'Tag destoyed!'

		redirect_to tags_path
	end
end
