class Record < ApplicationRecord
    belongs_to :user
    mount_uploader :sleeve, SleeveUploader
end
