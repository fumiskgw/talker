class Talk < ActiveRecord::Base
    validates :comment, presence: true
end
