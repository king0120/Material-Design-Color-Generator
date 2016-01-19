class Color < ActiveRecord::Base


  def self.json
    @json = Color.all.to_json
  end
end
