# The pages controller contains all the code for any page inside of /pages.
class PagesController < ApplicationController
  
  #back-end code for pages/index  
  def index
  end

  #back-end code for pages/home
  def home
  end

  #back-end code for pages/profile
  def profile
    # grab username from the URL as :id
    if(User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice => "User Not Found!"
    end
  end

  #back-end code for pages/explore
  def explore
  end
end
