class ConcertInfosController < ApplicationController

    def new
        
    end

    def create
        @post = ConcertInfo.new
        @post.name = params[:input_title]
        @post.content = params[:input_content]
        @post.place = params[:input_place]
        @post.price = params[:input_price]
        @post.start_at = params[:input_start_at]
        @post.finish_at = params[:input_finish_at]
        @post.sort01 = params[:input_sort01]
        @post.sort02 = params[:input_sort02]
        @post.sort03 = params[:input_sort03]
        @post.sort04 = params[:input_sort04]
        @post.main_lineup = params[:input_main_lineup]
        @post.sub_lineup = params[:input_sub_lineup]
        @post.save
        
        redirect_to "/concert_infos/show/#{@post.id}"
        
        #@posts = Comment.all
    end

    # Read
    def main_view

          
        #@posts = ConcertInfo.find(params[:post_id])
        #@posts = ConcertInfo.where([{params[:sort01]} = ? and  = ?", "#{params[:sort01]}", "#{params[:sort02]}"])
        #@posts = ConcertInfo.where([, params[:sort01], params[:sort02])
        #@posts = ConcertInfo.where({ "sort01": "#{params[:sort01]}", "sort02": "#{params[:sort02]}" })
        @posts = ConcertInfo.where(["sort01 = '%s' or sort02 = '%s' or sort03 = '%s' or sort04 = '%s'", "#{params[:sort01]}", "#{params[:sort02]}", "#{params[:sort03]}","#{params[:sort04]}"])
        
    end
    
    def sort
       #@posts = ConcertInfo.where({ "sort01": "#{params[:sort01]}", "sort02": "#{params[:sort02]}" })
    end
    
    
    def show
        @post =ConcertInfo.find(params[:post_id])
        @comments = Comment.where(concert_info_id: params[:post_id])
        
        #if (isComment.find(params[:post_id])==true)
        #    @comment = Comment.find(@post.id)
        #else
        #    @coomet = "아직 댓글이 없습니다."
        #end
    end
    
    def destroy
        @post =ConcertInfo.find(params[:post_id])
        @post.destroy
        @post.save
        redirect_to '/'
    end
    
    def edit
        @post = ConcertInfo.find(params[:post_id])
    end
    
    
    def update
        @post = ConcertInfo.find(params[:post_id])
        @post.name = params[:input_title]
        @post.content = params[:input_content]
        @post.place = params[:input_place]
        @post.price = params[:input_price]
        @post.start_at = params[:input_start_at]
        @post.finish_at = params[:input_finish_at]
        @post.sort01 = params[:input_sort01]
        @post.sort02 = params[:input_sort02]
        @post.sort03 = params[:input_sort03]
        @post.sort04 = params[:input_sort04]
        @post.main_lineup = params[:input_main_lineup]
        @post.sub_lineup = params[:input_sub_lineup]
        @post.save
        redirect_to "/concert_infos/show/#{@post.id}"
    end
    
    
end
