class PostsController < ApplicationController
    def index
        ### @posts = Post.all
        ## @posts = Post.published.order('created_at desc')
        @posts = Post.paginate(:page => params[:page], :per_page => 2)
        
        
    end 
    def show
        @post = Post.find(params[:id])
    end
    def new
        @post = Post.new
    end
    def create
        @post = Post.new(params[:post])

        if @post.save
            redirect_to @post, :notice => 'Post created'
        else
            render 'new'
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(params[:post])
            redirect_to @post, :notice => 'Post updated'
        else
            render 'edit'
        end
    end

    def destroy
        Post.find(params[:id]).destroy
        redirect_to posts_url, :notice => 'Post terminated'
    end

    def drafts
        @posts = Post.draft.order('created_at desc')
    end

end  
