class Route < ApplicationRecord

    has_many :favorite_routes 
    has_many :reviews 
    belongs_to :user, :foreign_key => "created_by"
    
end
