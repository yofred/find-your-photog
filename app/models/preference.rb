class Preference < ActiveRecord::Base
  attr_accessible :artistic, :conceptual, :contemporary, :documentary, :fine_art, :glamorous, :retro, :traditional, :user_id
  
  belongs_to :user
end
