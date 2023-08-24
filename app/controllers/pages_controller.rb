class PagesController < ApplicationController
  def about_me
    @author = 'Neptune Noise'
    @about = 'Не знаю, но оно работает)'
    render layout: 'about'
  end
end
