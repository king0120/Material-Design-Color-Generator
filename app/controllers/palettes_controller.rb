class PalettesController < ApplicationController
  def index
    all_palettes = Palette.where(user_id: current_user.id)
    @palettes = all_palettes.order(:score)
  end

  def show
    @palette = Palette.find(params[:id])
  end

  def new
    @palette = current_user.palettes.new
  end

  def create
    @palette = current_user.palettes.new(palette_params)
    @palette.save
    redirect_to palettes_path
  end

  def edit
    @palette = Palette.find(params[:id])
  end

  def update
    @palette = Palette.find(params[:id])
    @palette.update_attributes(palette_params)
    redirect_to palette_path
  end

  def destroy
    Palette.find(params[:id]).destroy
    redirect_to '/palettes'
  end

  private

  def palette_params
    params.require(:palette).permit(:name, :primary_name,
                                    :secondary_name, :dark_primary,
                                    :light_primary, :primary,
                                    :secondary, :text_color)
  end
end
