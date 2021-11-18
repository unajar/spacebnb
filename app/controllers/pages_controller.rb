class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @planets = Planet.all.reject do |planet|
      current_user == planet.user
    end.first(4)
  end
end
