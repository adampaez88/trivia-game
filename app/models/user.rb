class User < ApplicationRecord
    has_many :scores 
    has_many :questions, through: :scores 
end
