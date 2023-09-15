class PagesController < ApplicationController
  def about_me
    render layout: 'about'
  end

  def random
    render layout: 'random'
  end

  def support
    render layout: 'support'
  end

  def developer
    render layout: 'developer'
  end

  def contacts
    render layout: 'contacts'
  end

  def platform
    render layout: 'platform'
  end

  def resources
    render layout: 'resources'
  end

  def another_projects
    render layout: 'another_projects'
  end

  def future_projects
    render layout: 'future_projects'
  end

  def see_also
    render layout: 'see_also'
  end
end
