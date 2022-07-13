class HomeController < ApplicationController
  def index
    @characters = Character.all
  end

  def contact
  end

  def mipage
  end
end
