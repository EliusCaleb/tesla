class Review < ApplicationRecord
    belongs_to :tesla
    belongs_to  :user
end
