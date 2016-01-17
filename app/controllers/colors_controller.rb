class ColorsController < ApplicationController
  def index
    @color = Color.random
  end
end
