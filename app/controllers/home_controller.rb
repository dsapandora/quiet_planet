class HomeController < ApplicationController
  def index
    @posts = Komune.all.reverse
  end
end
