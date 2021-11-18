class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @planets = Planet.first(4)
  end
end
