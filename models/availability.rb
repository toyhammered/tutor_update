class Availability < ActiveRecord::Base
    has_many :tutor
    belongs_to :tutor
end