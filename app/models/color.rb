class Color < ActiveRecord::Base
  @number = 4
  def self.array_500
    @array = []
    @colors = Color.all
    @colors.each do |color|
      @array << color.palette_500
    end
    @array
  end

end
