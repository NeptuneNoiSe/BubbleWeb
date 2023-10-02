class RandomController < ApplicationController
  layout 'random'
  def new
    render :index
  end
end
