class PostController < ApplicationController
  def index
    
  end
  
  def list
#    @posting = Post.all
    #@posting = Post.find(@userID)
    @comment = Comment.all
  end
  
  
  def create
    @userID = params[:userID]
      
    @posting = Post.new
    @posting.title = params[:p_title]
    @posting.book = params[:b_title]
    @posting.author = params[:b_author]
    @posting.posting = params[:posting]

    @posting.isPrivate = params[:isPrivate]
    @posting.user_id = @userID
                      
    @hashtag = params[:hash_tag].split("#")
    @hashtag.each do |tag|
        @ht = Hashtag.new
        @ht.name = tag
        @ht.save
        @posting.hashtags << @ht
      end
    
    @posting.save  
    
    redirect_to '/post/list'
    
    
  end

  def edit
    
  end

  def delete
  end
  
  def show
  end
  
  def search_index  
    # @posts = Post.where(title: params[:title], author: params[:author])
       @posts = User.where(id: "2")
  end
end
