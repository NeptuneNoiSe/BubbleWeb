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

  def edit
    @support = Support.find(params[:id])
  end

  def update
    @support = Support.find(params[:id])
    if @support.update(support_params)
      redirect_to @support
    else
      render 'edit'
    end
  end

  def destroy
    @support = Support.find(params[:id])
    @support.destroy
    params[:id] = nil
    flash[:notice] = 'Message has been deleted'
    redirect_to support_index_path
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
