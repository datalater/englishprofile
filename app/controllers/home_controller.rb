class HomeController < ApplicationController
  def index
  end
  
  def write
    
      new_post = Post.new
      new_post.myname = params[:myname]
      new_post.mymajor1 = params[:mymajor1]
      new_post.mymajor2 = params[:mymajor2]
      new_post.mygrade = params[:mygrade]
      new_post.myclub = params[:myclub]
      new_post.myclubjoin = params[:myclubjoin]
      
      new_post.save
    
      redirect_to "/list" 
  end
  
  def list
      @every_post = Post.all.order("id desc")
  end
  
  def profile
    
  end
  
  def update_view
      @one_post = Post.find(params[:post_id])
      
  end
  
  def siljae_update
      @one_post = Post.find(params[:post_id])

      @one_post.myname = params[:myname]
      @one_post.mymajor1 = params[:mymajor1]
      @one_post.mymajor2 = params[:mymajor2]
      @one_post.mygrade = params[:mygrade]
      @one_post.myclub = params[:myclub]
      @one_post.myclubjoin = params[:myclubjoin]
      
      @one_post.save
      redirect_to "/list"
  end
    
      
  def destroy
      @one_post = Post.find(params[:post_id])
      @one_post.destroy
      redirect_to "/list"
  end
  
  
end
