class User < ApplicationRecord
    has_many :todos
    validates :name, presence: true, uniqueness:true
end
