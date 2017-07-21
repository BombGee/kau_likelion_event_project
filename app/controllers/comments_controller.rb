class CommentsController < ApplicationController
    
    def create
        @comment = Comment.new
        @comment.name= params[:input_name]
        @comment.content = params[:input_comment]
        @comment.concert_info_id = params[:post_id]
        @comment.save
        
        redirect_to "/concert_infos/show/#{params[:post_id]}"
    end
    
    def destroy
        @comment = Comment.find("#{params[:comment_id]}")
        #@comment = Comment.where(comment_id: params[:comment_id])
        @comment.destroy
        @comment.save
        #redirect_to= "/concert_infos/show/#{params[:post_id]}"
        redirect_to= "/"
    end
    
    
    
end
