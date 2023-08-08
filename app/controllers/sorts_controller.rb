class SortsController < ApplicationController

  def index

  end
  #before_filter :prepare_session
  #def prepare_session
    # initialize session variables
  #  session[:sort] ||= Sort.new
  #end
  def create
    @sort = Sort.new(sort_params)
  end
  private def sort_params
    params.require(:sort).permit(:input, output)
  end
end
