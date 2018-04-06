class CommentsController < ApplicationController

  def index
  	# p params
  	@comments = Comment.where(:photo_id => params[:photo_id])
  	# p "HERE I AM !!!1", @comments
  end

  def show
  	
  	
  end

  def new
  	@comment = Comment.new
  	
  end

  def create
  	@comment = Comment.create(comment_params)
  	if @comment.save
  	redirect_to photos_path
  	else
  	redirect_to new_comment_path
  	end

  end

  def edit
   
  end

  def update

  end

  def destroy

  end

  private

  def comment_params
  	params.require(:comment).permit(:user_id, :photo_id, :content)
  end
end
