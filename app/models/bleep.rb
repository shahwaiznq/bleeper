class Bleep < ApplicationRecord
    belongs_to :users, optional: true
    has_and_belongs_to_many :bleeptags
end
