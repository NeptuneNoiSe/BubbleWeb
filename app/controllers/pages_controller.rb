class PagesController < ApplicationController
  def about_me
    @heading = 'О Программе!!!'
    @author = 'Neptune Noise'
    @about = 'Не знаю, но оно работает)'
  end
end
