class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :soins]

  def home
  end

  def soins
  end
end
