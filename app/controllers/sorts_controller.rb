class SortsController < ApplicationController
  def new
    @result = Bubblesort.send(:to_array, *params[:input])
    result = @result
    @show_result = Bubblesort.send(:res1, result)
    render :index
  end
end
