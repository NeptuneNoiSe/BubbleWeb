class RandomController < ApplicationController
  layout 'random'
  def index
    @forms = Validater.new
  end

  def new
    @forms = Validater.new(form_params)
    if @forms.valid?
      @result_random = Massive.send(:params, *form_params[:nod], *form_params[:min],
                                    *form_params[:max], *form_params[:ndp])
      result = @result_random
      @avg = Massive.send(:avg, result)
      render :index
    else
      render :index
    end
  end

  def sort
    @forms = Validater.new
    @var = Massive.var
    @result_random = @var.sort { |a, b| a <=> b }
    result = @result_random
    @avg = Massive.send(:avg, result)
    render :index
  end

  private

  def form_params
    params.require(:form_random).permit(:nod, :min, :max, :ndp)
  end
end
