class PagesController < ApplicationController
  def about_me
    render layout: 'about'
  end
  def developer
    render layout: 'developer'
  end
  def random
    render layout: 'random'
  end
  def support
    render layout: 'support'
  end
end
