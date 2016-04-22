class HomeController < ApplicationController
  def index
  end
  
  def write
      @myname = params[:myname]
      @mymajor1 = params[:mymajor1]
      @mymajor2 = params[:mymajor2]
      @mygrade = params[:mygrade]
      @myclub = params[:myclub]
      @myclubjoin = params[:myclubjoin]
  end
  
  def list
    
  end
  
  def profile
    
  end
  
  
  
end
