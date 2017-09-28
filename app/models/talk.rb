class Talk < ActiveRecord::Base
    validates :comment, presence: true, length: { maximum: 140 }
end
