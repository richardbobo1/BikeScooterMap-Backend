class User < ApplicationRecord

    has_secure_password 
    validates :username, uniqueness: true 
    has_many :favorite_routes, :foreign_key => "user_id" 
    has_many :complete_routes, :foreign_key => "user_id" 
    has_many :user_companies, :foreign_key => "user_id" 
    has_many :reviews 
    has_many :journals 


end
