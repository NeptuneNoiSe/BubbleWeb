class SupportController < ApplicationController
  layout false
  def index
    @support = Support.all
  end

  def new
    @support = Support.new
  end

  def show
    @support = Support.find(params[:id])
  end

  def create
    @support = Support.new(support_params)
    if @support.save
      redirect_to @support
    else
      render 'new'
    end
  end

  private

  def support_params
    params.require(:support).permit(:title, :body)
  end
end
