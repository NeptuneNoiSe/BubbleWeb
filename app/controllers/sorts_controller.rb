class SortsController < ApplicationController
  def new
    @result = Bubblesort.send(:to_array, *params[:input])
    result = @result
    @show_result = Bubblesort.send(:res1, result)
    render :index
  end

#  def update
#    @sort
#  end
#  def show
#    render plain: params[:input].inspect
# end
# def create
#   @sort = Sort.new(sort_params)
# end
# def sort_params
#  params.require(:sort).permit(:input)
# end
  # raise params.inspect
end
