class Receipt < ApplicationRecord
    belongs_to :records
    belongs_to :users
end
