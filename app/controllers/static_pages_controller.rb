class StaticPagesController < ApplicationController
  def home
  end

  def explore
    @palettes = Palette.all
  end
end
