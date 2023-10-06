class RandomController < ApplicationController
  layout 'random'
  def new
    @result_random = Massive.send(:params, *params[:nod], *params[:min], *params[:max], *params[:ndp])
    result = @result_random
    @avg = Massive.send(:avg, result)
    render :index
  end

  def sort
    @var = Massive.var
    @result_random = @var.sort { |a, b| a <=> b }
    result = @result_random
    @avg = Massive.send(:avg, result)
    render :index
  end
end
