class RandomController < ApplicationController
  layout 'random'
  def new
    @result_random = Massive.send(:params, *params[:nod], *params[:min], *params[:max], *params[:ndp])
    render :index
  end
end
