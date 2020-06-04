class User < ApplicationRecord

    has_many :favorite_routes, :foreign_key => "user_id" 
    has_many :user_companies, :foreign_key => "user_id" 
    has_many :reviews 


end
