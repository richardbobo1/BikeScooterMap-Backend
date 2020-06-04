class UserCompany < ApplicationRecord

    belongs_to :user, :foreign_key => "user_id"
    belongs_to :company, :foreign_key => "company_id"
    
end
